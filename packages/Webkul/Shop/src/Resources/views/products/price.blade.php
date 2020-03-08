{!! view_render_event('bagisto.shop.products.price.before', ['product' => $product]) !!}

<div class="product-price text-center mb-2">
    @inject ('priceHelper', 'Webkul\Product\Helpers\Price')

    @if ($product->type == 'configurable')
{{--        <span class="price-label">{{ __('shop::app.products.price-label') }}</span>--}}

        <span class="final-price">{{ core()->currency($priceHelper->getMinimalPrice($product)) }}</span>
    @else
        @if ($priceHelper->haveSpecialPrice($product))
            <div class="sticker sale">
                {{ __('shop::app.products.sale') }}
            </div>
            <span class="regular-price">{{ core()->currency($product->price) }}</span>
            <br>
            <span class="special-price">{{ core()->currency($priceHelper->getSpecialPrice($product)) }}</span>
            <hr>
           <p class="count timer">  <i class="fas fa-clock"></i>{{ $priceHelper->getSpecialTimer($product) }} روز</p>

        @else
            <span>{{ core()->currency($product->price) }}</span>
        @endif
    @endif
</div>

{!! view_render_event('bagisto.shop.products.price.after', ['product' => $product]) !!}