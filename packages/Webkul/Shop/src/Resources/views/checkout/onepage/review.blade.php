<div class="form-container">
    <div class="form-header p-4 mb-30">
        <span class="checkout-step-heading">{{ __('shop::app.checkout.onepage.summary') }}</span>
    </div>

        <div class="row">
            <div class="col-lg-12">
        @if ($billingAddress = $cart->billing_address)
                    <div class="container py-5 z-depth-1">


                        <!--Section: Content-->
                        <section class="text-center px-md-5 mx-md-5 dark-grey-text">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-lg-6 mb-lg-0 mb-md-4">

                                    <!--Image-->
                                    <div class="view overlay z-depth-1-half">
                                        <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(5).jpg" class="img-fluid"
                                             alt="">
                                        <a href="#">
                                            <div class="mask rgba-white-slight"></div>
                                        </a>
                                    </div>

                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-lg-6 ">

                                    <h3 class="font-weight-bold">{{ __('shop::app.checkout.onepage.billing-address') }}</h3>
                                    <h4 class="font-weight-bold">                            {{ $billingAddress->name }}
                                    </h4>

                                    <p class="text-muted">  {{ $billingAddress->postcode }}
                                        {{ $billingAddress->address1 }} {{ $billingAddress->state }} {{ core()->country_name($billingAddress->country) }}
                                        {{ __('shop::app.checkout.onepage.contact') }} : {{ $billingAddress->phone }}

                                    </p>

{{--                                    <a class="btn btn-deep-purple btn-rounded waves-effect" href="#" role="button">اصلاح--}}
{{--                                    </a>--}}
                                    <button type="button" class="btn btn-deep-purple btn-rounded waves-effect">اصلاح </button>

                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                        </section>
                        <!--Section: Content-->


                    </div>
        @endif
            </div>
            <div class="col-lg-12">
        @if ($shippingAddress = $cart->shipping_address)
                    <div class="container py-5 z-depth-1">


                        <!--Section: Content-->
                        <section class="text-center px-md-5 mx-md-5 dark-grey-text">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-lg-6 mb-lg-0 mb-md-4">

                                    <!--Image-->
                                    <div class="view overlay z-depth-1-half">
                                        <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(5).jpg" class="img-fluid"
                                             alt="">
                                        <a href="#">
                                            <div class="mask rgba-white-slight"></div>
                                        </a>
                                    </div>

                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-lg-6 ">

                                    <h3 class="font-weight-bold">{{ __('shop::app.checkout.onepage.shipping-address') }}</h3>
                                    <h4 class="font-weight-bold">                           {{ $shippingAddress->name }}
                                    </h4>

                                    <p class="text-muted">   {{ $shippingAddress->address1 }} {{ $shippingAddress->state }} {{ core()->country_name($shippingAddress->country) }} {{ $shippingAddress->postcode }}
                                        <br>
                                        {{ __('shop::app.checkout.onepage.contact') }} : {{ $shippingAddress->phone }}


                                    </p>

                                    <button type="button" class="btn btn-deep-purple btn-rounded">اصلاح آدرس</button>


                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                        </section>
                        <!--Section: Content-->


                    </div>
        @endif
            </div>
        </div>


    @inject ('productImageHelper', 'Webkul\Product\Helpers\ProductImage')

    <div class="cart-item-list mt-20">
        @foreach ($cart->items as $item)

            <?php
                $product = $item->product;

                if ($product->type == "configurable")
                    $productBaseImage = $productImageHelper->getProductBaseImage($item->child->product);
                else
                    $productBaseImage = $productImageHelper->getProductBaseImage($item->product);
            ?>

            <div class="item mb-5" style="margin-bottom: 5px;">
                <div class="item-image">
                    <img src="{{ $productBaseImage['medium_image_url'] }}" />
                </div>

                <div class="item-details">

                    {!! view_render_event('bagisto.shop.checkout.name.before', ['item' => $item]) !!}

                    <div class="item-title">
                        {{ $product->name }}
                    </div>

                    {!! view_render_event('bagisto.shop.checkout.name.after', ['item' => $item]) !!}
                    {!! view_render_event('bagisto.shop.checkout.price.before', ['item' => $item]) !!}

                    <div class="row">
                        <span class="title">
                            {{ __('shop::app.checkout.onepage.price') }}
                        </span>
                        <span class="value">
                            {{ core()->currency($item->base_price) }}
                        </span>
                    </div>

                    {!! view_render_event('bagisto.shop.checkout.price.after', ['item' => $item]) !!}
                    {!! view_render_event('bagisto.shop.checkout.quantity.before', ['item' => $item]) !!}

                    <div class="row">
                        <span class="title">
                            {{ __('shop::app.checkout.onepage.quantity') }}
                        </span>
                        <span class="value">
                            {{ $item->quantity }}
                        </span>
                    </div>

                    {!! view_render_event('bagisto.shop.checkout.quantity.after', ['item' => $item]) !!}

                    @if ($product->type == 'configurable')
                        {!! view_render_event('bagisto.shop.checkout.options.after', ['item' => $item]) !!}

                        <div class="summary" >
                            {{ Cart::getProductAttributeOptionDetails($item->child->product)['html'] }}
                        </div>

                        {!! view_render_event('bagisto.shop.checkout.options.after', ['item' => $item]) !!}
                    @endif
                </div>
            </div>
        @endforeach
    </div>

    <div class="order-description mt-20">
        <div class="pull-left" style="width: 60%; float: left;">
            <div class="shipping">
                <div class="decorator">
                    <i class="icon shipping-icon"></i>
                </div>

                <div class="text">
                    {{ core()->currency($cart->selected_shipping_rate->base_price) }}

                    <div class="info">
                        {{ $cart->selected_shipping_rate->method_title }}
                    </div>
                </div>
            </div>

            <div class="payment">
                <div class="decorator">
                    <i class="icon payment-icon"></i>
                </div>

                <div class="text">
                    {{ core()->getConfigData('sales.paymentmethods.' . $cart->payment->method . '.title') }}
                </div>
            </div>

        </div>

        <div class="pull-right" style="width: 40%; float: left;">
            <slot name="summary-section"></slot>
        </div>
    </div>
</div>