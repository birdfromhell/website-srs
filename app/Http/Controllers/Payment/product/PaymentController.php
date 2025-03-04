<?php

namespace App\Http\Controllers\Payment\product;

use PDF;
use App\Customer;
use Carbon\Carbon;
use App\Models\Language;
use App\Models\OrderItem;
use App\Models\OrderTime;
use App\Models\TimeFrame;
use App\Models\BasicExtra;
use App\Events\OrderPlaced;
use Illuminate\Support\Str;
use App\Models\BasicSetting;
use App\Models\ProductOrder;
use App\Models\BasicExtended;
use App\Models\OfflineGateway;
use App\Models\PaymentGateway;
use App\Http\Helpers\MegaMailer;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use App\Notifications\WhatsappNotification;

class PaymentController extends Controller
{
    public function paycancle()
    {
        return redirect()->route('front.checkout')->with('error', 'Payment Cancelled.');
    }
    public function qrPayCancle()
    {
        return redirect()->route('front.multipurpose.qrmenu.checkout')->with('error', 'Payment Cancelled.');
    }
    public function payreturn($orderNum)
    {
        if (session()->has('lang')) {
            $lang = session()->get('lang');
            app()->setLocale($lang);
        } else {
            app()->setLocale('en');
        }
        $data['orderNum'] = $orderNum;
        $order = ProductOrder::where('order_number', $orderNum)->first();
        $data['order'] = $order;
        return view('front.multipurpose.product.success', $data);
    }

    public function qrPayReturn($orderNum)
    {
        $defaultLang = Language::where('is_default', 1)->first();
        if (!empty($defaultLang)) {
            app()->setLocale($defaultLang->code);
        }
        $data['defaultLang'] = $defaultLang;
        $itemsCount = 0;
        $cartTotal = 0;
        $cart = session()->get('cart');
        if (!empty($cart)) {
            foreach ($cart as $p) {
                $itemsCount += $p['qty'];
                $cartTotal += (float) $p['total'];
            }
        }

        $data['cart'] = $cart;
        $data['itemsCount'] = $itemsCount;
        $data['cartTotal'] = $cartTotal;
        $data['orderNum'] = $orderNum;
        $data['order'] = ProductOrder::where('order_number', $orderNum)->first();

        Session::forget('table');

        return view('front.multipurpose.qrmenu.success', $data);
    }

    public function orderTotal($scharge)
    {
        $cart = Session::get('cart');
        $total = 0.0;

        foreach ($cart as $key => $cartItem) {
            $total += $cartItem['total'];
        }

        $discount = session()->has('coupon') && !empty(session()->get('coupon')) ? session()->get('coupon') : 0;
        $total = $total + $scharge + tax() - $discount;
        $total = round($total, 2);

        return $total;
    }

    public function orderValidation($request)
    {
        $be = BasicExtended::first();
        $bs = BasicSetting::firstOrFail();

        if ($be->order_close == 1) {
            return back()->with('error', $be->order_close_message);
        }

        if (!Session::has('cart')) {
            return back()->with('error', 'No item added to cart!');
        }

        // get todays day & time
        $now = Carbon::now();
        $todaysDay = strtolower($now->format('l'));
        $currentTime = strtotime($now->toTimeString());

        // search in database by today's day & retrieve start & end time
        $orderTime = OrderTime::where('day', $todaysDay)->first();
        $start = strtotime($orderTime->start_time);
        $end = strtotime($orderTime->end_time);

        // check if any of the start or end time is emply,
        // then show message 'shop is closed today'

        // check if any of the start or end time is empty,
        // then show message 'shop is closed today'
        if (empty($start) || empty($end)) {
            return back()
                ->with('error', 'We are closed on ' . $todaysDay)
                ->withInput($request->all());
        }

        // check if current time is not between retrieved start & end time,
        // then show message 'shop is closed now'
        if (str_contains($orderTime->start_time, 'PM') && str_contains($orderTime->end_time, 'AM')) {
            $start = strtotime($now->toDateString() . ' ' . $orderTime->start_time);
            $end = strtotime(Carbon::now()->addDays(1)->toDateString() . ' ' . $orderTime->end_time);
            if ($currentTime < $start || $currentTime > $end) {
                return back()
                    ->with('error', 'We take orders from ' . $orderTime->start_time . ' to ' . $orderTime->end_time . ' on ' . $todaysDay)
                    ->withInput($request->all());
            }
        } elseif (str_contains($orderTime->start_time, 'AM') && str_contains($orderTime->end_time, 'AM') && $end < $start) {
            $start = strtotime($now->toDateString() . ' ' . $orderTime->start_time);
            $end = strtotime(Carbon::now()->addDays(1)->toDateString() . ' ' . $orderTime->end_time);
            if ($currentTime < $start || $currentTime > $end) {
                return back()
                    ->with('error', 'We take orders from ' . $orderTime->start_time . ' to ' . $orderTime->end_time . ' on ' . $todaysDay)
                    ->withInput($request->all());
            }
        } else {
            if ($currentTime < $start || $currentTime > $end) {
                return back()
                    ->with('error', 'We take orders from ' . $orderTime->start_time . ' to ' . $orderTime->end_time . ' on ' . $todaysDay)
                    ->withInput($request->all());
            }
        }

        $messages = [
            'billing_fname.required' => 'The billing first name field is required',
            'billing_lname.required' => 'The billing last name field is required',
            'shpping_fname.required' => 'The shipping first name field is required',
            'shpping_lname.required' => 'The shipping last name field is required',
            'shpping_address.required' => 'The shipping address field is required',
            'shpping_city.required' => 'The shipping country field is required',
            'shpping_country.required' => 'The shipping country field is required',
            'shpping_number.required' => 'The shipping phone number field is required',
            'shpping_email.required' => 'The shipping email field is required',
        ];

        $rules = [
            'gateway' => 'required',
            'serving_method' => 'required|sometimes',
            'shpping_fname' => 'required|sometimes',
            'shpping_lname' => 'required|sometimes',
            'shpping_address' => 'required|sometimes',
            'shpping_city' => 'required|sometimes',
            'shpping_country' => 'required|sometimes',
            'shpping_number' => 'required|sometimes',
            'shpping_email' => 'required|sometimes',
            'pick_up_date' => 'required|sometimes',
            'pick_up_time' => 'required|sometimes',
            'table_number' => 'required|sometimes',
            'shipping_charge' => 'required|sometimes',
            'stripeToken' => 'required|sometimes|string',
            'identity_number' => 'required|sometimes',
            'zipcode' => 'required|sometimes',
            'city' => 'required|sometimes',
            'country' => 'required|sometimes',
            'address' => 'required|sometimes',
        ];

        if (!$request->has('same_as_shipping') || $request->same_as_shipping != 1) {
            $rules['billing_fname'] = 'required';
            $rules['billing_lname'] = 'required|sometimes';
            $rules['billing_address'] = 'required|sometimes';
            $rules['billing_city'] = 'required|sometimes';
            $rules['billing_country'] = 'required|sometimes';
            $rules['billing_number'] = 'required|sometimes';
            $rules['billing_email'] = 'required';
            $rules['billing_country_code'] = 'required';
        }

        if ($request->serving_method == 'home_delivery' && $bs->postal_code == 1) {
            $rules['postal_code'] = 'required';
        }

        // return $request;
        // delivery date & time validation
        if ($request->serving_method == 'home_delivery' && $be->delivery_date_time_status == 1) {
            $rules['delivery_date'] = [
                function ($attribute, $value, $fail) use ($request, $be) {
                    if ($be->delivery_date_time_required == 1) {
                        if (!$request->has('delivery_date') || !$request->filled('delivery_date')) {
                            $fail('The delivery date field is required.');
                        }
                    }
                },
            ];

            $dtRequired = 0;
            if ($be->delivery_date_time_required == 1) {
                if (!$request->has('delivery_time') || !$request->filled('delivery_time')) {
                    $rules['delivery_time'] = 'required';
                    $dtRequired = 1;
                }
            }
            if ($dtRequired == 0) {
                $rules['delivery_time'] = [
                    function ($attribute, $value, $fail) use ($request) {
                        if ($request->has('delivery_time') && $request->filled('delivery_time')) {
                            $tf = TimeFrame::find($request->delivery_time);
                            // if maximum orders limit is not unlimited
                            if (!empty($tf) && $tf->max_orders != 0) {
                                $orderCount = ProductOrder::where('order_status', '<>', 'cancelled')
                                    ->where('delivery_time_start', $tf->start)
                                    ->where('delivery_time_end', $tf->end)
                                    ->count();
                                if ($orderCount >= $tf->max_orders) {
                                    $fail('Number of orders in this time frame has reached to its limit');
                                }
                            }
                        }
                    },
                ];
            }
        }

        $onCount = PaymentGateway::where('keyword', $request->gateway)->count();
        // if this is a offline gateway
        if ($onCount == 0) {
            $isReceipt = OfflineGateway::findOrFail($request->gateway)->is_receipt;
            // if the receipt is required
            if ($isReceipt == 1) {
                $rules['receipt'] = [
                    'required',
                    function ($attribute, $value, $fail) use ($request) {
                        $ext = $request->file('receipt')->getClientOriginalExtension();
                        if (!in_array($ext, ['jpg', 'png', 'jpeg'])) {
                            return $fail('Only png, jpg, jpeg image is allowed');
                        }
                    },
                ];
            }
        }

        $request->validate($rules, $messages);
    }
    public function saveOrder($request, $shipping, $total, $txnId = null, $chargeId = null, $gtype = 'online')
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }
        $be = $currentLang->basic_extended;
        $bs = $currentLang->basic_setting;
        $order = new ProductOrder();
        if ($request['serving_method'] == 'home_delivery' && $request->has('same_as_shipping') && $request['same_as_shipping'] == 1) {
            $order->billing_fname = $request['shpping_fname'];
            $order->billing_lname = $request['shpping_lname'];
            $order->billing_email = $request['shpping_email'];
            $order->billing_address = $request['shpping_address'];
            $order->billing_city = $request['shpping_city'];
            $order->billing_country = $request['shpping_country'];
            $order->billing_number = $request['shpping_number'];
            $order->billing_country_code = $request['shpping_country_code'];
        } else {
            $order->billing_fname = $request['billing_fname'];
            $order->billing_email = $request['billing_email'];
            $order->billing_number = $request['billing_number'];
            $order->billing_country_code = $request['billing_country_code'];
            // if the 'serving method' is 'home delivery', but 'same as shipping address' is not selected
            if ($request['serving_method'] == 'home_delivery') {
                $order->billing_lname = $request['billing_lname'];
                $order->billing_address = $request['billing_address'];
                $order->billing_city = $request['billing_city'];
                $order->billing_country = $request['billing_country'];
            }
        }
        if ($request['serving_method'] == 'home_delivery') {
            $order->shpping_fname = $request['shpping_fname'];
            $order->shpping_lname = $request['shpping_lname'];
            $order->shpping_email = $request['shpping_email'];
            $order->shpping_address = $request['shpping_address'];
            $order->shpping_city = $request['shpping_city'];
            $order->shpping_country = $request['shpping_country'];
            $order->shpping_number = $request['shpping_number'];
            $order->shpping_country_code = $request['shpping_country_code'];
            $order->delivery_date = $request['delivery_date'];
            if ($request['serving_method'] == 'home_delivery' && $be->delivery_date_time_status == 1) {
                if ($request->has('delivery_time') && $request->filled('delivery_time')) {
                    $tf = TimeFrame::find((int) $request->delivery_time);
                    $order->delivery_time_start = $tf->start;
                    $order->delivery_time_end = $tf->end;
                }
            }
            if ($bs->postal_code == 0 && $request->has('shipping_charge')) {
                $order->shipping_method = $shipping->title;
                if (!empty($shipping->free_delivery_amount) && cartTotal() >= $shipping->free_delivery_amount) {
                    $order->shipping_charge = 0;
                } else {
                    $order->shipping_charge = $shipping->charge;
                }
            } elseif ($bs->postal_code == 1) {
                if (!empty($shipping->free_delivery_amount) && cartTotal() >= $shipping->free_delivery_amount) {
                    $order->shipping_charge = 0;
                } else {
                    $order->shipping_charge = $shipping->charge;
                }
                $title = '';
                if (!empty($shipping->title)) {
                    $title = $shipping->title . ' - ';
                }
                $order->postal_code = $title . $shipping->postcode;
                $order->postal_code_status = 1;
            }
        }
        if ($request['serving_method'] == 'pick_up') {
            $order->pick_up_date = $request['pick_up_date'];
            $order->pick_up_time = $request['pick_up_time'];
        }
        if ($request['serving_method'] == 'on_table') {
            $order->token_no = $bs->token_no + 1;
            $bs->token_no = $order->token_no;
            $bs->save();
            $order->table_number = $request['table_number'];
            $order->waiter_name = $request['waiter_name'];
        }
        $order->order_notes = $request['order_notes'];
        $order->serving_method = $request['serving_method'];
        if ($request->ordered_from == 'website') {
            $order->type = 'website';
        } elseif ($request->ordered_from == 'qr') {
            $order->type = 'qr';
        }
        $order->total = round($total, 2);
        if ($gtype == 'offline') {
            $gt = OfflineGateway::findOrFail($request['gateway']);
            $gname = $gt->name;
        } else {
            $gname = $request['gateway'];
        }
        $order->method = $gname;
        $order->gateway_type = $gtype;
        $order->currency_code = $be->base_currency_text;
        $order->currency_code_position = $be->base_currency_text_position;
        $order->currency_symbol = $be->base_currency_symbol;
        $order->currency_symbol_position = $be->base_currency_symbol_position;
        $order->tax = tax();
        $discount = session()->has('coupon') && !empty(session()->get('coupon')) ? session()->get('coupon') : 0.0;
        $order->coupon = $discount;
        $order['order_number'] = Str::random(4) . '-' . time();
        $order['payment_status'] = 'Pending';
        $order['txnid'] = $txnId;
        $order['charge_id'] = $chargeId;
        $order['user_id'] = Auth::check() ? Auth::user()->id : null;
        if ($request->hasFile('receipt')) {
            $receipt = uniqid() . '.' . $request->file('receipt')->getClientOriginalExtension();
            $request->file('receipt')->move(public_path('assets/front/receipt/'), $receipt);
            $order['receipt'] = $receipt;
        }
        $order->conversation_id = $request['conversation_id'] ?? '';
        $order->save();
        // store customer in `customers` table
        $cust = Customer::where('phone', $request->billing_number);
        if ($cust->count() == 0) {
            $customer = new Customer();
        } else {
            $customer = $cust->first();
        }
        $customer->name = $request->billing_fname;
        $customer->email = $request->billing_email;
        $customer->phone = $request->billing_number;
        if ($request['serving_method'] == 'home_delivery') {
            $customer->address = $request->billing_address;
        }
        $customer->save();
        return $order;
    }

    public function saveOrderItem($orderId)
    {
        $cart = Session::get('cart');

        foreach ($cart as $key => $cartItem) {
            $addonTotal = 0.0;
            if (!empty($cartItem['addons'])) {
                foreach ($cartItem['addons'] as $key => $addon) {
                    $addonTotal += (float) $addon['price'];
                }
                $addonTotal = $addonTotal * (int) $cartItem['qty'];
            }
            $varTotal = 0.0;
            if (!empty($cartItem['variations'])) {
                foreach ($cartItem['variations'] as $key => $variation) {
                    $varTotal += (float) $variation['price'];
                }
                $varTotal = $varTotal * (int) $cartItem['qty'];
            }
            $pprice = (float) $cartItem['product_price'] * (int) $cartItem['qty'];

            OrderItem::insert([
                'product_order_id' => $orderId,
                'product_id' => $cartItem['id'],
                'user_id' => Auth::check() ? Auth::user()->id : null,
                'title' => $cartItem['name'],
                'variations' => json_encode($cartItem['variations']),
                'addons' => json_encode($cartItem['addons']),
                'variations_price' => $varTotal,
                'addons_price' => $addonTotal,
                'product_price' => $pprice,
                'total' => $pprice + $varTotal + $addonTotal,
                'qty' => $cartItem['qty'],
                'image' => $cartItem['photo'],
                'created_at' => Carbon::now(),
            ]);
        }
    }

    public function sendNotifications($order)
    {
        if ($order->method != 'flutterwave') {
            // send mail to buyer
            $this->mailFromAdmin($order);
        }
        // send mail to admin
        $this->mailToAdmin($order);

        // real time notification to Admin
        event(new OrderPlaced());

        $bex = BasicExtra::first();

        if (($order->serving_method == 'home_delivery' && $bex->whatsapp_home_delivery == 1) || ($order->serving_method == 'pick_up' && $bex->whatsapp_pickup == 1) || ($order->serving_method == 'on_table' && $bex->whatsapp_on_table == 1)) {
            try {
                // whatsapp notification
                Config::set('services.twilio.sid', $bex->twilio_sid);
                Config::set('services.twilio.token', $bex->twilio_token);
                Config::set('services.twilio.whatsapp_from', $bex->twilio_phone_number);
                $order->notify(new WhatsappNotification($order));
            } catch (\Exception $e) {
                dd($e);
            }
        }
    }

    public function mailFromAdmin($order)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $bs = $currentLang->basic_setting;

        $fileName = Str::random(4) . time() . '.pdf';
        $path = public_path('assets/front/invoices/product/' . $fileName);
        $data['order'] = $order;
        PDF::loadView('pdf.product', $data)->save($path);

        ProductOrder::where('id', $order->id)->update([
            'invoice_number' => $fileName,
        ]);

        // Send Mail to Buyer

        $mailer = new MegaMailer();
        $data = [
            'toMail' => $order->billing_email,
            'toName' => $order->billing_fname,
            'attachment' => $fileName,
            'customer_name' => $order->billing_fname,
            'order_number' => $order->order_number,
            'website_title' => $bs->website_title,
            'templateType' => 'food_checkout',
            'type' => 'foodCheckout',
        ];

        if (Auth::guard('web')->check()) {
            $data['order_link'] = "Please click on the below link to see your order details.  <a href='" . route('user-orders-details', $order->id) . "'>" . route('user-orders-details', $order->id) . '</a>';
        } else {
            $data['order_link'] = null;
        }

        $mailer->mailFromAdmin($data);
    }

    public function mailToAdmin($order)
    {
        $subject = 'New Order Placed';
        $body =
            "A new order has been placed.<br>
        <strong>Order Number: </strong> " .
            $order->order_number .
            "<br>
        <a href='" .
            route('admin.product.details', $order->id) .
            "'>Click here to view order details</a>";
        $data = [
            'fromMail' => $order->billing_email,
            'fromName' => $order->billing_fname,
            'subject' => $subject,
            'body' => $body,
        ];
        $mailer = new MegaMailer();
        $mailer->mailToAdmin($data);
    }
}
