<script>
    
    var disDays = {!! json_encode($disDays) !!};
    var postalCode = {{$bs->postal_code}};
    console.log(postalCode);

    // apply coupon functionality starts
    function applyCoupon() {
        $.post(
            "{{route('front.coupon')}}",
            {
                coupon: $("input[name='coupon']").val()
            },
            function(data) {
                console.log(data);
                if (data.status == 'success') {
                    toastr["success"](data.message);
                    $("input[name='coupon']").val('');
                    $("#cartTotal").load(location.href + " #cartTotal", function() {
                        calcTotal();
                    });
                } else {
                    toastr["error"](data.message);
                }
            }
        );
    }
    $("input[name='coupon']").on('keypress', function(e) {
        let code = e.which;
        if (code == 13) {
            e.preventDefault();
            applyCoupon();
        }
    });
    // apply coupon functionality ends


    // show forms depending for selected 'serving method'
    function showForm(val) {
        $(".form-container").removeClass('d-block');
        $(".form-container").addClass('d-none');
        $(".form-container input").attr('disabled', true);

        $("#" + val).removeClass('d-none');
        $("#" + val).addClass('d-block');
        $("#" + val + " input").attr('disabled', false);
    }

    // function to show offline gateways according to selected serving method
    function showOfflineGateways() {
        let gateways = $("input[name='serving_method']:checked").data('gateways');
        $(".offline").removeClass('d-block');
        $(".offline").addClass('d-none');
        $(".offline input").attr('disabled', true);
        for (let i = 0; i < gateways.length; i++) {
            $("#offline"+gateways[i]).removeClass('d-none');
            $("#offline"+gateways[i]).addClass('d-block');
            $("#offline"+gateways[i] + " input").attr('disabled', false);
        }
    }

    // function to show forms depending for selected 'gateway'
    function showDetails(tabid) {
        // hide all inputs of unselected gateway
        $(".gateway-details").removeClass("d-flex");
        $(".gateway-details").addClass("d-none");
        // disable all input fields of unselected gateway
        $(".gateway-details input").attr('disabled', true);
        
        var $serving_method = $("input[name='serving_method']:checked").val();
        if ($("#tab-" + tabid).length > 0) {
            if(tabid == 'iyzico'){
                if($serving_method == 'on_table' || $serving_method == 'pick_up'){
                    $(".on_tble_info").removeClass('d-none');
                }else{
                    $(".on_tble_info").addClass('d-none');
                }
            }
            if(tabid == 'stripe'){
                $("#tab-" + tabid).removeClass("d-none");
            }else{
                $("#tab-" + tabid).addClass("d-flex");
            }
            // enable all input fields of selected gateway
            $("#tab-" + tabid + " input").removeAttr("disabled");
        }
    }

    function toggleBillingAddress() {
        let val = $("input[name='same_as_shipping']").is(':checked');
        if (!val) {
            $("#billingAddress").show();
        } else {
            $("#billingAddress").hide();
        }
    }

    function calcTotal() {
        let $servingIn = $("input[name='serving_method']:checked");
        let $shippingIn = $("input[name='shipping_charge']:checked");

        let subTotal = parseFloat($("#subtotal").attr('data'));
        let total = subTotal;
        let scharge = 0;
        let tax = $("#tax").data('tax');

        // if selected serving method is 'home delivery'
        if ($servingIn.val() == 'home_delivery') {
            // if there is any 'shipping methods available'
            if (postalCode == 0 && $shippingIn.length > 0) {
                scharge = $shippingIn.attr('data');
            } else if(postalCode == 1) {
                scharge = $("select[name='postal_code']").children('option:selected').attr('data') ? $("select[name='postal_code']").children('option:selected').attr('data') : 0;
            }
        }

        $(".shipping").text(scharge);
        total += parseFloat(scharge) + parseFloat(tax);
        total = total.toFixed(2);
        console.log(total);
        $(".grandTotal").attr('data', total);
        $(".grandTotal").text(total);
    }

    function loadTimeFrames(date, time) {
        if (date.length > 0) {
            $.get(
                "{{route('front.timeframes')}}",
                {
                    date: date
                },
                function(data) {
                    console.log('time frames', data);
                    let options = `<option value="" selected disabled>Select a Time Frame</option>`;
                    if (data.status == 'success') {
                        $("#deliveryTime").removeAttr('disabled');
                        let timeframes = data.timeframes;
                        for (let i = 0; i < timeframes.length; i++) {
                            options += `<option value="${timeframes[i].id}" ${time == timeframes[i].id ? 'selected' : ''}>${timeframes[i].start} - ${timeframes[i].end}</option>`
                        }
                    } else {
                        $("#deliveryTime").attr('disabled', true);
                        toastr["error"](data.message);
                    }
                    $("#deliveryTime").html(options);
                }
            )
        }
    }

    // document load first time
    $(document).ready(function() {
        // show offline gateways according to selected serving method
        showOfflineGateways();

        // change form action, show form for checked 'serving method'
        let val = $("input[name='serving_method']:checked").val();
        showForm(val);

        // calculate total
        calcTotal();

        // toggle billing address
        toggleBillingAddress();

        // load time frames
        loadTimeFrames("{{old('delivery_date')}}", "{{old('delivery_time')}}");


        // always check the first payment gateway
        if(old_gateway == false){
            $(".input-check").first().attr('checked', true);
        }
        // change form action, show form for checked 'gateway'
        let tabid = $(".input-check:checked").data('tabid');
        $('#payment').attr('action', $(".input-check:checked").data('action'));
      
     
        showDetails(tabid);

        // delivery datepicker init
        $(".delivery-datepicker").each(function() {
            let $this = $(this);
            $this.datepicker({
                beforeShowDay: function(date) {
                    let day = date.getDay();
                    if(disDays.indexOf(day) !== -1){
                        return [false,'na_dates'];
                    } else {
                        return [true,'	'];
                    }
                },
                onSelect: function(date, instance) {
                    $this.parents('.field-input').addClass('cross-show');
                    loadTimeFrames(date);
                }
            });
        });
    });

    // clearing datepicker date on cross click
    $(".field-input.cross i.fa-times-circle").on('click', function() {
        $(this).parents('.field-input').find('input').val('');
        $(this).parents('.field-input').removeClass('cross-show');
        $("#deliveryTime").html(`<option value="" selected disabled>Select a Time Frame</option>`);
        $("#deliveryTime").attr('disabled', true);
    })


    // on change of 'Serving Method'
    $("input[name='serving_method']").on('change', function() {
        let val = $(this).val();
        var selectedValue = $('input[name="gateway"]:checked').val();
        
        if (selectedValue == 'iyzico') {
            const optionToTrigger = document.querySelector('input[name="gateway"][value="flutterwave"]');
                if (optionToTrigger) {
                    optionToTrigger.click();
                }
        }

        // show offline gateways according to selected serving method
        showOfflineGateways();
        // show form according to selected gateway
        showForm(val);
        calcTotal();
    })

    // on change of 'postal code'
    $(document).on('change', "select[name='postal_code']", function() {
        // calculate total
        calcTotal();
    });

    // on change of 'shipping methods'
    $(document).on('change', "input[name='shipping_charge']", function() {
        // calculate total
        calcTotal();
    });

    // on change of 'same as shipping' checkbox
    $("input[name='same_as_shipping']").on('change', function() {
        toggleBillingAddress();
    });

    // on gateway change...
    $(document).on('change', '.input-check', function() {
        // change form action
        let tabid = $(this).data('tabid');
        $('#payment').attr('action', $(this).data('action'));
        $('#paymentGatewaysForm').attr('action', $(".input-check:checked").data('action'));
        // show relevant form (if any)
        showDetails(tabid);
    });


// Set your Stripe public key
var stripe = Stripe(stripe_key);
// Create a Stripe Element for the card field
var elements = stripe.elements();
var cardElement = elements.create('card', {
  style: {
    base: {
      iconColor: '#454545',
      color: '#454545',
      fontWeight: '500',
      lineHeight: '50px',
      fontSmoothing: 'antialiased',
      backgroundColor: '#f2f2f2',
      ':-webkit-autofill': {
        color: '#454545',
      },
      '::placeholder': {
        color: '#454545',
      },
    }
  },
});

// Add an instance of the card Element into the `card-element` div
cardElement.mount('#tab-stripe');
let radioBtnVals = $('input[name="gateway"]:checked').val();
// Handle form submission
var form = document.getElementById('payment');
form.addEventListener('submit', function (event) {
    event.preventDefault();
  if ($('input[name="gateway"]:checked').val() == 'stripe') {
    stripe.createToken(cardElement).then(function (result) {
      if (result.error) {
        // Display errors to the customer
        var errorElement = document.getElementById('stripe-errors');
        errorElement.textContent = result.error.message;
      } else {
        // Send the token to your server
        stripeTokenHandler(result.token);
      }
    });
  } else {
    $('#payment').submit();
  }
});

// Send the token to your server
function stripeTokenHandler(token) {
  // Add the token to the form data before submitting to the server
  var form = document.getElementById('payment');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form to your server
  form.submit();
}



</script>
