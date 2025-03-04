@extends('front.qrmenu.layout')

@section('page-heading')
    {{ __('Checkout') }}
@endsection

@section('content')
    <section class="checkout-area">
        <form action="" method="POST" id="payment" enctype="multipart/form-data">
            @csrf
            <div class="container">
                <div class="row">
                    <div class="col-12 mb-5">
                        <div class="table">
                            <div class="shop-title-box">
                                <h3>{{ __('Serving Method') }}</h3>
                            </div>
                            <table class="cart-table shipping-method">
                                <thead class="cart-header">
                                    <tr>
                                        <th>#</th>
                                        <th>{{ __('Method') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($smethods as $sm)
                                        @if (Session::has('table'))
                                            @if ($sm->value == 'on_table')
                                                <tr>
                                                    <td>
                                                        <input type="radio" name="serving_method" class="shipping-charge"
                                                            value="{{ $sm->value }}"
                                                            @if (empty(old()) && $loop->first) checked
                                                    @elseif(old('serving_method') == $sm->value)
                                                        checked @endif
                                                            data-gateways="{{ $sm->gateways }}">
                                                    </td>
                                                    <td>
                                                        <p class="mb-1"><strong>{{ __($sm->name) }}</strong></p>
                                                        <p class="mb-0"><small>{{ __($sm->note) }}</small></p>
                                                    </td>
                                                </tr>
                                            @endif
                                        @else
                                            <tr>
                                                <td>
                                                    <input type="radio" name="serving_method" class="shipping-charge"
                                                        value="{{ $sm->value }}"
                                                        @if (empty(old()) && $loop->first) checked
                                                @elseif(old('serving_method') == $sm->value)
                                                    checked @endif
                                                        data-gateways="{{ $sm->gateways }}">
                                                </td>
                                                <td>
                                                    <p class="mb-1"><strong>{{ __($sm->name) }}</strong></p>
                                                    <p class="mb-0"><small>{{ __($sm->note) }}</small></p>
                                                </td>
                                            </tr>
                                        @endif
                                    @endforeach
                                </tbody>
                            </table>
                            @error('serving_method')
                                <p class="text-danger mb-0">{{ convertUtf8($message) }}</p>
                            @enderror
                        </div>
                    </div>
                </div>
                <input type="hidden" name="ordered_from" value="qr">
                <div class="form-container" id="home_delivery">
                    @include('front.multipurpose.qrmenu.partials.home_delivery_form')
                </div>
                <div class="form-container d-none" id="pick_up">
                    @include('front.multipurpose.qrmenu.partials.pick_up_form')
                </div>
                <div class="form-container d-none" id="on_table">
                    @include('front.multipurpose.qrmenu.partials.on_table_form')
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="field-label">{{ __('Order Notes') }} </div>
                        <div class="field-input">
                            <textarea name="order_notes" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                </div>
                <div id="paymentInputs"></div>
            </div>
            <div class="bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                            <div class="table">
                                <div class="shop-title-box">
                                    <h3>{{ __('Order Summary') }}</h3>
                                </div>
                                @php
                                    $total = 0;
                                @endphp
                                @if (!empty($cart))
                                    <table class="cart-table">
                                        <thead class="cart-header">
                                            <tr>
                                                <th class="prod-column" width="10%">{{ __('Product') }}</th>
                                                <th width="70%">{{ __('Product Title') }}</th>
                                                <th>{{ __('Quantity') }}</th>
                                                <th>{{ __('Total') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($cart as $key => $item)
                                                @php
                                                    $id = $item['id'];
                                                    $product = App\Models\Product::findOrFail($id);
                                                    $total += $item['total'];
                                                @endphp
                                                <tr class="remove{{ $id }}">
                                                    <td class="prod-column" width="10%">
                                                        <div class="column-box">
                                                            <div class="prod-thumb">
                                                                <img class="lazy"
                                                                    data-src="{{ asset('assets/front/img/product/featured/' . $item['photo']) }}"
                                                                    alt="" width="100">
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td width="70%">
                                                        <div class="title">
                                                            <h5 class="prod-title">{{ convertUtf8($item['name']) }}</h5>
                                                            @if (!empty($item['variations']))
                                                                <p><strong>{{ __('Variation') }}:</strong> <br>
                                                                    @php
                                                                        $variations = $item['variations'];
                                                                    @endphp
                                                                    @foreach ($variations as $vKey => $variation)
                                                                        <span
                                                                            class="text-capitalize">{{ str_replace('_', ' ', $vKey) }}:</span>
                                                                        {{ $variation['name'] }}
                                                                        @if (!$loop->last)
                                                                            ,
                                                                        @endif
                                                                    @endforeach
                                                                </p>
                                                            @endif
                                                            @if (!empty($item['addons']))
                                                                <p>
                                                                    <strong>{{ __("Add On's") }}:</strong>
                                                                    @php
                                                                        $addons = $item['addons'];
                                                                    @endphp
                                                                    @foreach ($addons as $addon)
                                                                        {{ $addon['name'] }}
                                                                        @if (!$loop->last)
                                                                            ,
                                                                        @endif
                                                                    @endforeach
                                                                </p>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td class="qty">
                                                        {{ $item['qty'] }}
                                                    </td>
                                                    <input type="hidden" value="{{ $id }}" class="product_id">
                                                    <td class="sub-total">
                                                        {{ $be->base_currency_symbol_position == 'left' ? $be->base_currency_symbol : '' }}{{ $item['total'] }}{{ $be->base_currency_symbol_position == 'right' ? $be->base_currency_symbol : '' }}
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @else
                                            <div class="py-5 bg-light text-center">
                                                <h5>{{ __('Cart is empty!') }}</h5>
                                            </div>
                                @endif
                                </tbody>
                                </table>
                                <div class="text-center my-4">
                                    <a href="{{ route('front.qrmenu') }}"
                                        class="main-btn main-btn-2">{{ __('Return to Menu') }}</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                            @include('front.multipurpose.qrmenu.partials.order_total')
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
@endsection

@section('script')
    <script>
        $(".dropdown-menu.country-codes a").on('click', function(e) {
            e.preventDefault();

            if ($("input[name='billing_country_code']").length > 0) {
                $("input[name='billing_country_code']").val($(this).data('billing_country_code'));
                $(this).parents('.input-group').find('button.dropdown-toggle').text($(this).data(
                    'billing_country_code'));
            }
            if ($("input[name='shpping_country_code']").length > 0) {
                $("input[name='shpping_country_code']").val($(this).data('shpping_country_code'));
                $(this).parents('.input-group').find('button.dropdown-toggle').text($(this).data(
                    'shpping_country_code'));
            }
        });
    </script>

    @if (old('gateway'))
        <script>
            let old_gateway = true;
        </script>
    @endif

    <script src="https://js.stripe.com/v3/"></script>
    <script type="text/javascript">
        let old_gateway = false;
        let stripe_key = "{{ $stripe_key }}";
    </script>
    @include('front.multipurpose.qrmenu.partials.scripts')
@endsection
