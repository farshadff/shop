@inject ('productImageHelper', 'Webkul\Product\Helpers\ProductImage')
@inject ('priceHelper', 'Webkul\Product\Helpers\Price')

<?php $cart = cart()->getCart(); ?>

@if ($cart)
    @php
        Cart::collectTotals();
    @endphp

    <?php $items = $cart->items; ?>

    <!--Dropdown primary-->
    <div class="dropdown">
        <!--Trigger-->
        <a class=" dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
           aria-haspopup="true" aria-expanded="false">   <i class="fas fa-shopping-cart"></i>


            <span class="name">
{{--            {{ __('shop::app.header.cart') }}--}}
            <span class="count"> ({{ $cart->items->count() }})</span>
        </span></a>


        <!--Menu-->
        <div class="dropdown-menu dropdown-primary buy-basket">
            <div class="col-lg-12">
            <div class="dropdown-header">
                <p class="heading">
                    {{ __('shop::app.checkout.cart.cart-subtotal') }} -

                    {!! view_render_event('bagisto.shop.checkout.cart-mini.subtotal.before', ['cart' => $cart]) !!}

{{--                    <b>{{ core()->currency($cart->base_sub_total) }}</b>--}}
                    <span class="price-toman">{{$priceHelper->setToman($cart->base_sub_total) }} </span>


                    {!! view_render_event('bagisto.shop.checkout.cart-mini.subtotal.after', ['cart' => $cart]) !!}
                </p>
            </div>

            <div class="dropdown-contente">
                @foreach ($items as $item)

                    <div class="item">
                        <div class="row">
                            <div class="col-lg-6">
                        <div class="item-image" >
                            <?php
                            if ($item->type == "configurable")
                                $images = $productImageHelper->getProductBaseImage($item->child->product);
                            else
                                $images = $productImageHelper->getProductBaseImage($item->product);
                            ?>
                            <img src="{{ $images['small_image_url'] }}" />
                        </div>
                            </div>
                            <div class="col-lg-6">
                        <div class="item-details">
                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.name.before', ['item' => $item]) !!}

                            <div class="item-name">{{ $item->name }}</div>

                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.name.after', ['item' => $item]) !!}


                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.options.before', ['item' => $item]) !!}

                            @if ($item->type == "configurable")
                                <div class="item-options">
                                    {{ trim(Cart::getProductAttributeOptionDetails($item->child->product)['html']) }}
                                </div>
                            @endif

                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.options.after', ['item' => $item]) !!}


                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.price.before', ['item' => $item]) !!}

{{--                            <div class="item-price"><b>{{ core()->currency($item->base_total) }}</b></div>--}}

                            <span class="price-toman">{{$priceHelper->setToman($item->base_total) }} </span>
                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.price.after', ['item' => $item]) !!}


                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.quantity.before', ['item' => $item]) !!}

                            <div class="item-qty">تعداد - {{ $item->quantity }}</div>

                            {!! view_render_event('bagisto.shop.checkout.cart-mini.item.quantity.after', ['item' => $item]) !!}
                        </div>
                            </div>
                        </div>
                    </div>

                @endforeach
            </div>

            <div class="dropdown-footer">
                <a class="btn btn-primary btn-lg" href="{{ route('shop.checkout.cart.index') }}">{{ __('shop::app.minicart.view-cart') }}</a>

                <a class="btn btn-primary btn-lg" style="color: white;" href="{{ route('shop.checkout.onepage.index') }}">{{ __('shop::app.minicart.checkout') }}</a>
            </div>
            </div>
        </div>
    </div>
    <!--/Dropdown primary-->
@else

    <div class="dropdown-toggle">
        <div style="display: inline-block; cursor: pointer;">
            <a class="basket-link" href="{{url('/checkout/cart')}}"><i class="fas fa-shopping-cart basket-icon"></i></a>
{{--            <span class="name">{{ __('shop::app.minicart.cart') }}<span class="count"> ({{ __('shop::app.minicart.zero') }}) </span></span>--}}
        </div>
    </div>
@endif