@extends('admin.layout')

@section('content')
  <div class="page-header">
    <h4 class="page-title">Online Gateways</h4>
    <ul class="breadcrumbs">
      <li class="nav-home">
        <a href="{{route('admin.dashboard')}}">
          <i class="flaticon-home"></i>
        </a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#">Payment Gateways</a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#">Online Gateways</a>
      </li>
    </ul>
  </div>
  <div class="row">

    <div class="col-lg-4">
      <div class="card">
        <form action="{{route('admin.paypal.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Paypal</div>
                  </div>
              </div>
          </div>
          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf

                <div class="form-group">
                  <label>Paypal</label>
                  <div class="selectgroup w-100">
                    <label class="selectgroup-item">
                      <input type="radio" name="status" value="1" class="selectgroup-input" {{$paypal->status == 1 ? 'checked' : ''}}>
                      <span class="selectgroup-button">Active</span>
                    </label>
                    <label class="selectgroup-item">
                      <input type="radio" name="status" value="0" class="selectgroup-input" {{$paypal->status == 0 ? 'checked' : ''}}>
                      <span class="selectgroup-button">Deactive</span>
                    </label>
                  </div>
                </div>
                @php
                    $paypalInfo = json_decode($paypal->information, true);
                    // dd($paypalInfo);
                @endphp
                <div class="form-group">
                  <label>Paypal Test Mode</label>
                  <div class="selectgroup w-100">
                    <label class="selectgroup-item">
                      <input type="radio" name="sandbox_check" value="1" class="selectgroup-input" {{$paypalInfo["sandbox_check"] == 1 ? 'checked' : ''}}>
                      <span class="selectgroup-button">Active</span>
                    </label>
                    <label class="selectgroup-item">
                      <input type="radio" name="sandbox_check" value="0" class="selectgroup-input" {{$paypalInfo["sandbox_check"] == 0 ? 'checked' : ''}}>
                      <span class="selectgroup-button">Deactive</span>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label>Paypal Client ID</label>
                  <input class="form-control" name="client_id" value="{{$paypalInfo["client_id"]}}">
                  @if ($errors->has('client_id'))
                    <p class="mb-0 text-danger">{{$errors->first('client_id')}}</p>
                  @endif
                </div>
                <div class="form-group">
                  <label>Paypal Client Secret</label>
                  <input class="form-control" name="client_secret" value="{{$paypalInfo["client_secret"]}}">
                  @if ($errors->has('client_secret'))
                    <p class="mb-0 text-danger">{{$errors->first('client_secret')}}</p>
                  @endif
                </div>

              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" id="displayNotif" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>


    <div class="col-lg-4">
      <div class="card">
        <form class="" action="{{route('admin.stripe.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Stripe</div>
                  </div>
              </div>
          </div>
          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf
                @php
                    $stripeInfo = json_decode($stripe->information, true);
                    // dd($stripeInfo);
                @endphp
                <div class="form-group">
                    <label>Stripe</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="1" class="selectgroup-input" {{$stripe->status == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="0" class="selectgroup-input" {{$stripe->status == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Stripe Key</label>
                    <input class="form-control" name="key" value="{{$stripeInfo['key']}}">
                    @if ($errors->has('key'))
                        <p class="mb-0 text-danger">{{$errors->first('key')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Stripe Secret</label>
                    <input class="form-control" name="secret" value="{{$stripeInfo['secret']}}">
                    @if ($errors->has('secret'))
                        <p class="mb-0 text-danger">{{$errors->first('secret')}}</p>
                    @endif
                </div>

              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" id="displayNotif" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="card">
        <form class="" action="{{route('admin.paytm.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Paytm</div>
                  </div>
              </div>
          </div>


          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf
                @php
                    $paytmInfo = json_decode($paytm->information, true);
                    // dd($paytmInfo);
                @endphp
                <div class="form-group">
                    <label>Paytm</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="1" class="selectgroup-input" {{$paytm->status == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="0" class="selectgroup-input" {{$paytm->status == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Paytm Merchant Key</label>
                    <input class="form-control" name="secret" value="{{$paytmInfo['secret']}}">
                    @if ($errors->has('secret'))
                        <p class="mb-0 text-danger">{{$errors->first('secret')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Paytm Merchant mid</label>
                    <input class="form-control" name="merchant" value="{{$paytmInfo['merchant']}}">
                    @if ($errors->has('merchant'))
                        <p class="mb-0 text-danger">{{$errors->first('merchant')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Paytm Merchant website</label>
                    <input class="form-control" name="website" value="{{$paytmInfo['website']}}">
                    @if ($errors->has('website'))
                        <p class="mb-0 text-danger">{{$errors->first('website')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Industry type id</label>
                    <input class="form-control" name="industry" value="{{$paytmInfo['industry']}}">
                    @if ($errors->has('industry'))
                        <p class="mb-0 text-danger">{{$errors->first('industry')}}</p>
                    @endif
                </div>

              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="card">
        <form class="" action="{{route('admin.instamojo.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Instamojo</div>
                  </div>
              </div>
          </div>


          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf
                @php
                    $instamojoInfo = json_decode($instamojo->information, true);
                    // dd($instamojoInfo);
                @endphp
                <div class="form-group">
                    <label>Instamojo</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="1" class="selectgroup-input" {{$instamojo->status == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="0" class="selectgroup-input" {{$instamojo->status == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Test Mode</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="sandbox_check" value="1" class="selectgroup-input" {{$instamojoInfo['sandbox_check'] == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="sandbox_check" value="0" class="selectgroup-input" {{$instamojoInfo['sandbox_check'] == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Instamojo API Key</label>
                    <input class="form-control" name="key" value="{{$instamojoInfo['key']}}">
                    @if ($errors->has('key'))
                        <p class="mb-0 text-danger">{{$errors->first('key')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Instamojo Auth Token</label>
                    <input class="form-control" name="token" value="{{$instamojoInfo['token']}}">
                    @if ($errors->has('token'))
                        <p class="mb-0 text-danger">{{$errors->first('token')}}</p>
                    @endif
                </div>

              </div>
            </div>
          </div>

          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="card">
        <form class="" action="{{route('admin.paystack.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Paystack</div>
                  </div>
              </div>
          </div>
          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf
                @php
                    $paystackInfo = json_decode($paystack->information, true);
                    // dd($paystackInfo);
                @endphp
                <div class="form-group">
                    <label>Paystack</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="1" class="selectgroup-input" {{$paystack->status == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="0" class="selectgroup-input" {{$paystack->status == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Paystack Secret Key</label>
                    <input class="form-control" name="key" value="{{$paystackInfo['key']}}">
                    @if ($errors->has('key'))
                        <p class="mb-0 text-danger">{{$errors->first('key')}}</p>
                    @endif
                </div>

              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" id="displayNotif" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="card">
        <form class="" action="{{route('admin.flutterwave.update')}}" method="post">
          @csrf
          <div class="card-header">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="card-title">Flutterwave</div>
                  </div>
              </div>
          </div>
          <div class="card-body pt-5 pb-5">
            <div class="row">
              <div class="col-lg-12">
                @csrf
                @php
                    $flutterwaveInfo = json_decode($flutterwave->information, true);
                    // dd($flutterwaveInfo);
                @endphp
                <div class="form-group">
                    <label>Flutterwave</label>
                    <div class="selectgroup w-100">
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="1" class="selectgroup-input" {{$flutterwave->status == 1 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Active</span>
                      </label>
                      <label class="selectgroup-item">
                        <input type="radio" name="status" value="0" class="selectgroup-input" {{$flutterwave->status == 0 ? 'checked' : ''}}>
                        <span class="selectgroup-button">Deactive</span>
                      </label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Flutterwave Public Key</label>
                    <input class="form-control" name="public_key" value="{{$flutterwaveInfo['public_key']}}">
                    @if ($errors->has('public_key'))
                        <p class="mb-0 text-danger">{{$errors->first('public_key')}}</p>
                    @endif
                </div>
                <div class="form-group">
                    <label>Flutterwave Secret Key</label>
                    <input class="form-control" name="secret_key" value="{{$flutterwaveInfo['secret_key']}}">
                    @if ($errors->has('secret_key'))
                        <p class="mb-0 text-danger">{{$errors->first('secret_key')}}</p>
                    @endif
                </div>

              </div>
            </div>
          </div>
          <div class="card-footer">
            <div class="form">
              <div class="form-group from-show-notify row">
                <div class="col-12 text-center">
                  <button type="submit" class="btn btn-success">Update</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <form class="" action="{{route('admin.mollie.update')}}" method="post">
            @csrf
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title">Mollie Payment</div>
                    </div>
                </div>
            </div>


            <div class="card-body pt-5 pb-5">
                <div class="row">
                <div class="col-lg-12">
                    @csrf
                    @php
                        $mollieInfo = json_decode($mollie->information, true);
                        // dd($mollieInfo);
                    @endphp
                    <div class="form-group">
                        <label>Mollie Payment</label>
                        <div class="selectgroup w-100">
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="1" class="selectgroup-input" {{$mollie->status == 1 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Active</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="0" class="selectgroup-input" {{$mollie->status == 0 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Deactive</span>
                        </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Mollie Payment Key</label>
                        <input class="form-control" name="key" value="{{$mollieInfo['key']}}">
                        @if ($errors->has('key'))
                            <p class="mb-0 text-danger">{{$errors->first('key')}}</p>
                        @endif
                    </div>

                </div>
                </div>
            </div>

            <div class="card-footer">
                <div class="form">
                <div class="form-group from-show-notify row">
                    <div class="col-12 text-center">
                    <button type="submit" class="btn btn-success">Update</button>
                    </div>
                </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <form class="" action="{{route('admin.razorpay.update')}}" method="post">
            @csrf
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title">Razorpay</div>
                    </div>
                </div>
            </div>


            <div class="card-body pt-5 pb-5">
                <div class="row">
                <div class="col-lg-12">
                    @csrf
                    @php
                        $razorpayInfo = json_decode($razorpay->information, true);
                        // dd($razorpayInfo);
                    @endphp
                    <div class="form-group">
                        <label>Razorpay</label>
                        <div class="selectgroup w-100">
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="1" class="selectgroup-input" {{$razorpay->status == 1 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Active</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="0" class="selectgroup-input" {{$razorpay->status == 0 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Deactive</span>
                        </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Razorpay Key</label>
                        <input class="form-control" name="key" value="{{$razorpayInfo['key']}}">
                        @if ($errors->has('key'))
                            <p class="mb-0 text-danger">{{$errors->first('key')}}</p>
                        @endif
                    </div>

                    <div class="form-group">
                        <label>Razorpay Secret</label>
                        <input class="form-control" name="secret" value="{{$razorpayInfo['secret']}}">
                        @if ($errors->has('secret'))
                            <p class="mb-0 text-danger">{{$errors->first('secret')}}</p>
                        @endif
                    </div>

                </div>
                </div>
            </div>

            <div class="card-footer">
                <div class="form">
                <div class="form-group from-show-notify row">
                    <div class="col-12 text-center">
                    <button type="submit" class="btn btn-success">Update</button>
                    </div>
                </div>
                </div>
            </div>
            </form>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="card">
            <form class="" action="{{route('admin.mercadopago.update')}}" method="post">
            @csrf
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title">Mercadopago</div>
                    </div>
                </div>
            </div>


            <div class="card-body pt-5 pb-5">

                    @csrf
                    @php
                        $mercadopagoInfo = json_decode($mercadopago->information, true);
                        // dd($mercadopagoInfo);
                    @endphp
                    <div class="form-group">
                        <label>Mercado Pago</label>
                        <div class="selectgroup w-100">
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="1" class="selectgroup-input" {{$mercadopago->status == 1 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Active</span>
                        </label>
                        <label class="selectgroup-item">
                            <input type="radio" name="status" value="0" class="selectgroup-input" {{$mercadopago->status == 0 ? 'checked' : ''}}>
                            <span class="selectgroup-button">Deactive</span>
                        </label>
                        </div>
                    </div>

                    <div class="form-group">
                      <label>Mercado Pago Test Mode</label>
                      <div class="selectgroup w-100">
                        <label class="selectgroup-item">
                          <input type="radio" name="sandbox_check" value="1" class="selectgroup-input" {{$mercadopagoInfo["sandbox_check"] == 1 ? 'checked' : ''}}>
                          <span class="selectgroup-button">Active</span>
                        </label>
                        <label class="selectgroup-item">
                          <input type="radio" name="sandbox_check" value="0" class="selectgroup-input" {{$mercadopagoInfo["sandbox_check"] == 0 ? 'checked' : ''}}>
                          <span class="selectgroup-button">Deactive</span>
                        </label>
                      </div>
                    </div>

                    <div class="form-group">
                        <label>Mercadopago Token</label>
                        <input class="form-control" name="token" value="{{$mercadopagoInfo['token']}}">
                        @if ($errors->has('token'))
                            <p class="mb-0 text-danger">{{$errors->first('token')}}</p>
                        @endif
                    </div>
            </div>

            <div class="card-footer">
                <div class="form">
                <div class="form-group from-show-notify row">
                    <div class="col-12 text-center">
                    <button type="submit" class="btn btn-success">Update</button>
                    </div>
                </div>
                </div>
            </div>
            </form>
        </div>
    </div>


    
    <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.midtrans.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Midtrans') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Midtrans Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="midtrans_status" value="1"
                                          class="selectgroup-input" {{ $midtrans->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="midtrans_status" value="0"
                                          class="selectgroup-input" {{ $midtrans->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('midtrans_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('midtrans_status') }}</p>
                              @endif
                          </div>

                          @php $midtransInfo = json_decode($midtrans->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('Midtrans Test Mode') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="mindtrans_test_mode" value="1"
                                          class="selectgroup-input"
                                          {{ isset($midtransInfo['mindtrans_test_mode']) ? ($midtransInfo['mindtrans_test_mode'] == 1 ? 'checked' : '') : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="mindtrans_test_mode" value="0"
                                          class="selectgroup-input"
                                          {{ isset($midtransInfo['mindtrans_test_mode']) ? ($midtransInfo['mindtrans_test_mode'] == 0 ? 'checked' : '') : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('mindtrans_test_mode'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('mindtrans_test_mode') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Server Key') }}</label>
                              <input type="text" class="form-control" name="midtrans_server_key"
                                  value="{{ $midtransInfo['midtrans_server_key'] ?? '' }}">
                              @if ($errors->has('midtrans_server_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('midtrans_server_key') }}</p>
                              @endif
                          </div>

                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  {{-- Perfect Money Information --}}
  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.perfectmoney.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Perfect Money') }}</div>
                      </div>
                  </div>
              </div>

              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Perfect Money Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="status" value="1"
                                          class="selectgroup-input"
                                          {{ $perfect_money->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="status" value="0"
                                          class="selectgroup-input"
                                          {{ $perfect_money->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('status') }}</p>
                              @endif
                          </div>

                          @php $perfect_moneyInfo = json_decode($perfect_money->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('Perfect Money Wallet Id') }}</label>
                              <input type="text" class="form-control" name="perfect_money_wallet_id"
                                  value="{{ @$perfect_moneyInfo['perfect_money_wallet_id'] }}">
                              @if ($errors->has('perfect_money_wallet_id'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('perfect_money_wallet_id') }}
                                  </p>
                              @endif

                              <p class="text-warning mt-1 mb-0">{{ __('You will get wallet id form here') }} </p>
                              <a href="https://prnt.sc/bM3LqLXBduaq"
                                  target="_blank">https://prnt.sc/bM3LqLXBduaq</a>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.paytabs.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Paytabs') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Paytabs Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="paytabs_status" value="1"
                                          class="selectgroup-input" {{ $paytabs->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="paytabs_status" value="0"
                                          class="selectgroup-input" {{ $paytabs->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('paytabs_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('paytabs_status') }}</p>
                              @endif
                          </div>

                          @php $paytabsInfo = json_decode($paytabs->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('Country') }}</label>
                              <select name="country" id="" class="form-control">
                                  <option value="global" @selected(@$paytabsInfo['country'] == 'global')>{{ __('Global') }}</option>
                                  <option value="sa" @selected(@$paytabsInfo['country'] == 'sa')>{{ __('Saudi Arabia') }}
                                  </option>
                                  <option value="uae" @selected(@$paytabsInfo['country'] == 'uae')>
                                      {{ __('United Arab Emirates') }}</option>
                                  <option value="egypt" @selected(@$paytabsInfo['country'] == 'egypt')>{{ __('Egypt') }}</option>
                                  <option value="oman" @selected(@$paytabsInfo['country'] == 'oman')>{{ __('Oman') }}</option>
                                  <option value="jordan" @selected(@$paytabsInfo['country'] == 'jordan')>{{ __('Jordan') }}</option>
                                  <option value="iraq" @selected(@$paytabsInfo['country'] == 'iraq')>{{ __('Iraq') }}</option>
                              </select>
                              @if ($errors->has('country'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('country') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Profile ID') }}</label>
                              <input type="text" class="form-control" name="profile_id"
                                  value="{{ $paytabsInfo['profile_id'] ?? '' }}">
                              @if ($errors->has('profile_id'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('profile_id') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Server Key') }}</label>
                              <input type="text" class="form-control" name="server_key"
                                  value="{{ $paytabsInfo['server_key'] ?? '' }}">
                              @if ($errors->has('server_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('server_key') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('API Endpoint') }}</label>
                              <input type="text" class="form-control" name="api_endpoint"
                                  value="{{ $paytabsInfo['api_endpoint'] ?? '' }}">
                              @if ($errors->has('api_endpoint'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('api_endpoint') }}</p>
                              @endif
                              <p class="mt-1 mb-0 text-warning">{{ __("You will get 'API Endpoint' from here.") }}
                                  <a href="https://prnt.sc/McaCbxt75fyi"
                                      target="_blank">https://prnt.sc/McaCbxt75fyi</a>, <a
                                      href="https://prnt.sc/DgztAyHVR2o8"
                                      target="_blank">https://prnt.sc/DgztAyHVR2o8</a>
                              </p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>
  {{-- iyzico --}}
  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.iyzico.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Iyzico') }}</div>
                      </div>
                  </div>
              </div>

              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                
                          <div class="form-group">
                              <label>{{ __('Iyzico Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="status" value="1"
                                          class="selectgroup-input" {{ $iyzico->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="status" value="0"
                                          class="selectgroup-input" {{ $iyzico->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('status') }}</p>
                              @endif
                          </div>
                          
                          @php $iyzicoInfo = json_decode($iyzico->information, true); @endphp
                          <div class="form-group">
                              <label>{{ __('Iyzico Test Mode') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="iyzico_sandbox_status" value="1"
                                          class="selectgroup-input"
                                          {{ @$iyzicoInfo['iyzico_sandbox_status'] == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="iyzico_sandbox_status" value="0"
                                          class="selectgroup-input"
                                          {{ @$iyzicoInfo['iyzico_sandbox_status'] == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('iyzico_sandbox_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('iyzico_sandbox_status') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Api Key') }}</label>
                              <input type="text" class="form-control" name="api_key"
                                  value="{{ isset($iyzicoInfo['api_key']) ? $iyzicoInfo['api_key'] : '' }}">
                              @if ($errors->has('api_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('api_key') }}</p>
                              @endif
                          </div>
                          <div class="form-group">
                              <label>{{ __('Secret Key') }}</label>
                              <input type="text" class="form-control" name="secret_key"
                                  value="{{ isset($iyzicoInfo['secret_key']) ? $iyzicoInfo['secret_key'] : '' }}">
                              @if ($errors->has('secret_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('secret_key') }}</p>
                              @endif
                          </div>
                          <p class="text-warning"><strong>Cron Job Command :</strong> curl -sS
                              {{ url('/') }}/check-payment
                          </p>
                          <p class="text-danger">If you don't set cron job then the Iyzico payment method will not be
                              work</p>
                      </div>
                  </div>
              </div>

              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.toyyibpay.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Toyyibpay') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('ToyyibPay Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="toyyibpay_status" value="1"
                                          class="selectgroup-input" {{ $toyyibpay->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="toyyibpay_status" value="0"
                                          class="selectgroup-input" {{ $toyyibpay->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('toyyibpay_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('toyyibpay_status') }}</p>
                              @endif
                          </div>

                          @php $toyyibpayInfo = json_decode($toyyibpay->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('ToyyibPay Sandbox') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="toyyibpay_sandbox_status" value="1"
                                          class="selectgroup-input"
                                          {{ isset($toyyibpayInfo['toyyibpay_sandbox_status']) && $toyyibpayInfo['toyyibpay_sandbox_status'] == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="toyyibpay_sandbox_status" value="0"
                                          class="selectgroup-input"
                                          {{ isset($toyyibpayInfo['toyyibpay_sandbox_status']) && $toyyibpayInfo['toyyibpay_sandbox_status'] == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('toyyibpay_sandbox_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('toyyibpay_sandbox_status') }}
                                  </p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Secret Key') }}</label>
                              <input type="text" class="form-control" name="toyyibpay_secret_key"
                                  value="{{ $toyyibpayInfo['toyyibpay_secret_key'] ?? '' }}">
                              @if ($errors->has('toyyibpay_secret_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('toyyibpay_secret_key') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Category Code') }}</label>
                              <input type="text" class="form-control" name="category_code"
                                  value="{{ $toyyibpayInfo['category_code'] ?? '' }}">
                              @if ($errors->has('category_code'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('category_code') }}</p>
                              @endif
                          </div>

                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.phonepe.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Phonepe') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Phonepe Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="phonepe_status" value="1"
                                          class="selectgroup-input" {{ $toyyibpay->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="phonepe_status" value="0"
                                          class="selectgroup-input" {{ $toyyibpay->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('phonepe_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('phonepe_status') }}</p>
                              @endif
                          </div>

                          @php $phonepeInfo = json_decode($phonepe->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('Sandbox Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="phonepe_sandbox_status" value="1"
                                          class="selectgroup-input"
                                          {{ @$phonepeInfo['phonepe_sandbox_status'] == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="phonepe_sandbox_status" value="0"
                                          class="selectgroup-input"
                                          {{ @$phonepeInfo['phonepe_sandbox_status'] == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('phonepe_sandbox_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('phonepe_sandbox_status') }}
                                  </p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Merchant ID') }}</label>
                              <input type="text" class="form-control" name="phonepe_merchant_id"
                                  value="{{ $phonepeInfo['phonepe_merchant_id'] ?? '' }}">
                              @if ($errors->has('phonepe_merchant_id'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('phonepe_merchant_id') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Salt Key') }}</label>
                              <input type="text" class="form-control" name="salt_key"
                                  value="{{ $phonepeInfo['salt_key'] ?? '' }}">
                              @if ($errors->has('salt_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('salt_key') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Salt Index') }}</label>
                              <input type="text" class="form-control" name="salt_index"
                                  value="{{ $phonepeInfo['salt_index'] ?? '' }}">
                              @if ($errors->has('salt_index'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('salt_index') }}</p>
                              @endif
                          </div>

                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.myfatoorah.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Myfatoorah') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">

                          <div class="form-group">
                              <label>{{ __('Myfatoorah Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="myfatoorah_status" value="1"
                                          class="selectgroup-input"
                                          {{ $myfatoorah->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="myfatoorah_status" value="0"
                                          class="selectgroup-input"
                                          {{ $myfatoorah->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('myfatoorah_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('myfatoorah_status') }}</p>
                              @endif
                          </div>

                          @php $myfatoorahInfo = json_decode($myfatoorah->information, true); @endphp

                          <div class="form-group">
                              <label>{{ __('Myfatoorah Sandbox Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="myfatoorah_sandbox_status" value="1"
                                          class="selectgroup-input"
                                          {{ @$myfatoorahInfo['myfatoorah_sandbox_status'] == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="myfatoorah_sandbox_status" value="0"
                                          class="selectgroup-input"
                                          {{ @$myfatoorahInfo['myfatoorah_sandbox_status'] == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('myfatoorah_sandbox_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('myfatoorah_sandbox_status') }}</p>
                              @endif
                          </div>

                          <div class="form-group">
                              <label>{{ __('Token') }}</label>
                              <input type="text" class="form-control" name="token"
                                  value="{{ $myfatoorahInfo['token'] ?? '' }}">
                              @if ($errors->has('token'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('token') }}</p>
                              @endif
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.xendit.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Xendit') }}</div>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Xendit Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="xendit_status" value="1"
                                          class="selectgroup-input" {{ $xendit->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="xendit_status" value="0"
                                          class="selectgroup-input" {{ $xendit->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('xendit_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('xendit_status') }}</p>
                              @endif
                          </div>

                          @php $xenditInfo = json_decode($xendit->information, true); @endphp


                          <div class="form-group">
                              <label>{{ __('Secret API Key') }}</label>
                              <input type="text" class="form-control" name="secret_api_key"
                                  value="{{ $xenditInfo['secret_api_key'] ?? '' }}">
                              @if ($errors->has('secret_api_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('secret_api_key') }}</p>
                              @endif
                          </div>

                      </div>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  {{-- yoco Information --}}
  <div class="col-lg-4">
      <div class="card">
          <form action="{{ route('admin.yoco.update') }}" method="post">
              @csrf
              <div class="card-header">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="card-title">{{ __('Yoco') }}</div>
                      </div>
                  </div>
              </div>

              <div class="card-body">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="form-group">
                              <label>{{ __('Yoco Status') }}</label>
                              <div class="selectgroup w-100">
                                  <label class="selectgroup-item">
                                      <input type="radio" name="yoco_status" value="1"
                                          class="selectgroup-input" {{ $yoco->status == 1 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Active') }}</span>
                                  </label>
                                  <label class="selectgroup-item">
                                      <input type="radio" name="yoco_status" value="0"
                                          class="selectgroup-input" {{ $yoco->status == 0 ? 'checked' : '' }}>
                                      <span class="selectgroup-button">{{ __('Deactive') }}</span>
                                  </label>
                              </div>
                              @if ($errors->has('yoco_status'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('yoco_status') }}</p>
                              @endif
                          </div>

                          @php $yocoInfo = json_decode($yoco->information, true); @endphp


                          <div class="form-group">
                              <label>{{ __('Secret Key') }}</label>
                              <input type="text" class="form-control" name="yoco_secret_key"
                                  value="{{ $yocoInfo['yoco_secret_key'] ?? '' }}">
                              @if ($errors->has('yoco_secret_key'))
                                  <p class="mt-1 mb-0 text-danger">{{ $errors->first('yoco_secret_key') }}</p>
                              @endif
                          </div>
                      </div>
                  </div>
              </div>

              <div class="card-footer">
                  <div class="row">
                      <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success">
                              {{ __('Update') }}
                          </button>
                      </div>
                  </div>
              </div>

          </form>
      </div>
  </div>

  </div>

@endsection
