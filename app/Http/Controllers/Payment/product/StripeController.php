<?php

namespace App\Http\Controllers\Payment\product;

use Auth;
use Session;
use App\Models\Language;
use App\Models\PostalCode;
use App\Events\OrderPlaced;
use Illuminate\Support\Str;
use App\Models\BasicSetting;
use App\Models\ProductOrder;
use Illuminate\Http\Request;
use App\Models\PaymentGateway;
use App\Models\ShippingCharge;
use PHPMailer\PHPMailer\Exception;
use Illuminate\Support\Facades\Config;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use App\Http\Controllers\Payment\product\PaymentController;

class StripeController extends PaymentController
{
    public function __construct()
    {
        //Set Spripe Keys
        $stripe = PaymentGateway::findOrFail(14);
        $stripeConf = json_decode($stripe->information, true);
        Config::set('services.stripe.key', $stripeConf['key']);
        Config::set('services.stripe.secret', $stripeConf['secret']);
    }

    public function store(Request $request)
    {
        if ($this->orderValidation($request)) {
            return $this->orderValidation($request);
        }
        $bs = BasicSetting::select('postal_code')->firstOrFail();

        if ($request->serving_method == 'home_delivery') {
            if ($bs->postal_code == 0) {
                if ($request->has('shipping_charge')) {
                    $shipping = ShippingCharge::findOrFail($request->shipping_charge);
                    $shippig_charge = $shipping->charge;
                } else {
                    $shipping = null;
                    $shippig_charge = 0;
                }
            } else {
                $shipping = PostalCode::findOrFail($request->postal_code);
                $shippig_charge = $shipping->charge;
            }
            if (!empty($shipping) && !empty($shipping->free_delivery_amount) && cartTotal() >= $shipping->free_delivery_amount) {
                $shippig_charge = 0;
            } else {
                $shippig_charge = $shippig_charge;
            }
        } else {
            $shipping = null;
            $shippig_charge = 0;
        }
        $total = $this->orderTotal($shippig_charge);

        // save order
        $txnId = 'txn_' . Str::random(8) . time();
        $chargeId = 'ch_' . Str::random(9) . time();
        $order = $this->saveOrder($request, $shipping, $total, $txnId, $chargeId);
        $order_id = $order->id;

        // save ordered items
        $this->saveOrderItem($order_id);

        session()->put('request', $request);

        return $this->apiRequest($order_id);
    }

    // send API request & redirect
    public function apiRequest($orderId)
    {
        $order = ProductOrder::find($orderId);
        $request = session()->get('request');
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }
        $be = $currentLang->basic_extended;
        $usdTotal = round($order->total / $be->base_currency_rate, 2);
        $title = 'Product Checkout';
        if ($order->type == 'website') {
            $success_url = route('product.payment.return', $order->order_number);
        } elseif ($order->type == 'qr') {
            $success_url = route('qr.payment.return', $order->order_number);
        }

        // initialize stripe
        $stripe = new Stripe();
        $stripe = Stripe::make(Config::get('services.stripe.secret'));
        
        try {
            // generate charge
            $charge = $stripe->charges()->create([
                'source' => $request->stripeToken,
                'currency' => 'USD',
                'amount' => $usdTotal,
            ]);

            if ($charge['status'] == 'succeeded') {
                $order->payment_status = 'Completed';
                $order->save();

                $this->sendNotifications($order);

                Session::forget('coupon');
                Session::forget('cart');
                Session::forget('request');

                return redirect($success_url);
            }
        } catch (Exception $e) {
            return back()->with('error', $e->getMessage());
        } catch (\Cartalyst\Stripe\Exception\CardErrorException $e) {
            return back()->with('error', $e->getMessage());
        } catch (\Cartalyst\Stripe\Exception\MissingParameterException $e) {
            return back()->with('error', $e->getMessage());
        }
    }
}
