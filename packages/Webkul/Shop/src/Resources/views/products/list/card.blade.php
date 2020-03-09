{!! view_render_event('bagisto.shop.products.list.card.before', ['product' => $product]) !!}

<div class="col col-lg-3 mb-5 border-b">
    @inject ('productImageHelper', 'Webkul\Product\Helpers\ProductImage')

    <?php $productBaseImage = $productImageHelper->getProductBaseImage($product); ?>

{{--    @if ($product->new)--}}
{{--        <div class="sticker new">--}}
{{--            {{ __('shop::app.products.new') }}--}}
{{--        </div>--}}
{{--    @endif--}}
    {{--    <div class="col-lg-3 col-md-6 mb-4 card-product">--}}
<!-- Card -->
{{--    <div class="card card-cascade narrower card-ecommerce">--}}
{{--        <!-- Card image -->--}}
{{--        <div class="view view-cascade overlay">--}}
{{--            --}}{{--                <img src="{{ $productBaseImage['medium_image_url'] }}" class="card-img-top"--}}
{{--            <img src="{{ $productBaseImage['medium_image_url'] }}" class="card-img-top"--}}
{{--                 alt="sample photo">--}}
{{--            <a href="{{url()->to('/').'/products/' . $product->url_key}}">--}}
{{--                <div class="mask rgba-white-slight"></div>--}}
{{--            </a>--}}
{{--        </div>--}}
{{--        <!-- Card image -->--}}
{{--        <!-- Card content -->--}}
{{--        <div class="card-body card-body-cascade text-center pb-3">--}}
{{--            <!-- Title -->--}}
{{--            <h5 class="card-title mb-1">--}}
{{--                <strong>--}}
{{--                    <a href="{{ url()->to('/').'/products/' . $product->url_key }}">{{ $product->name }} </a>--}}
{{--                </strong>--}}
{{--            </h5>--}}
{{--            <p class="card-text">--}}
{{--                {{str_limit(strip_tags($product->description),$limit= 25 ,$end = '. . .')}}--}}
{{--            </p>--}}
{{--            <!-- Card footer -->--}}
{{--            <div class="card-footer px-1">--}}
{{--              <span class="float-left font-weight-bold">--}}
{{--                          <a class="material-tooltip-main d-inline-block" data-toggle="tooltip" data-placement="top"--}}
{{--                             title="اضافه کردن به سبد خرید">--}}
{{--                       @if ($product->type == "configurable")--}}
{{--                                  <div class="cart-wish-wrap text-center text-center d-inline-block">--}}
{{--                                  <div class="cart-wish-wrap">--}}
{{--            <a href="{{ route('cart.add.configurable', $product->url_key) }}" class="btn btn-xs addtocart">--}}
{{--                     <i--}}
{{--                         class="fas fa-shopping-cart main-text ml-3"></i>--}}
{{--            </a>--}}

{{--            @include('shop::products.wishlist')--}}
{{--        </div>--}}
{{--                                  </div>--}}
{{--                              @else--}}
{{--                                  <div class="cart-wish-wrap text-center text-center d-inline-block">--}}
{{--            <form action="{{ route('cart.add', $product->product_id) }}" method="POST">--}}
{{--                @csrf--}}
{{--                <input type="hidden" name="product" value="{{ $product->product_id }}">--}}
{{--                <input type="hidden" name="quantity" value="1">--}}
{{--                <input type="hidden" value="false" name="is_configurable">--}}
{{--                <button class="btn btn-xs addtocart" {{ $product->haveSufficientQuantity(1) ? '' : 'disabled' }}>                  <i--}}
{{--                        class="fas fa-shopping-cart main-text ml-3"></i>--}}
{{--</button>--}}
{{--            </form>--}}

{{--            @include('shop::products.wishlist')--}}
{{--        </div>--}}
{{--                              @endif--}}

{{--                </a>--}}


{{--              </span>--}}
{{--                <span class="float-right">--}}
{{--       <strong>--}}
{{--                    {{ core()->currency($product->price) }}--}}
{{--           @include ('shop::products.price', ['product' => $product])--}}
{{--                </strong>--}}

{{--                <a class="material-tooltip-main" data-toggle="tooltip" data-placement="top" title="Add to Wishlist">--}}
{{--                    --}}{{--                  <i class="fas fa-heart grey-text ml-3"></i>--}}
{{--                    --}}{{--                </a>--}}
{{--              </span>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <!-- Card content -->--}}
{{--    </div>--}}
    <!-- Card -->
{{--        </div>--}}
    <a  href="{{ route('shop.products.index', $product->url_key) }}" title="{{ $product->name }}">
        <span class="discount">{{round(($product->price - $product->special_price) /$product->price * 100 )}}%</span>
        <img class="img-fluid" src="{{ $productBaseImage['medium_image_url'] }}"
             onerror="this.src='{{ asset('vendor/webkul/ui/assets/images/product/meduim-product-placeholder.png') }}'"/>
    </a>
        <hr>
        <div class="row">
        <div class="col-lg-9">
  <a class="product-name" href="{{ url()->to('/').'/products/' . $product->url_key }}">{{ $product->name }} </a>
        </div>
            <div class="col-lg-3">
                <a href="{{ route('cart.add.configurable', $product->url_key) }}" class="addtocart">
                                    <i
                                       class="fas fa-shopping-cart main-text ml-3"></i>
                           </a>
            </div>
        </div>










{{--        <div class="product-image">--}}
{{--            <a href="{{ route('shop.products.index', $product->url_key) }}" title="{{ $product->name }}">--}}
{{--                <img class="img-fluid" src="{{ $productBaseImage['medium_image_url'] }}"--}}
{{--                     onerror="this.src='{{ asset('vendor/webkul/ui/assets/images/product/meduim-product-placeholder.png') }}'"/>--}}
{{--            </a>--}}
{{--        </div>--}}

{{--        <div class="product-information mt-2">--}}

{{--            <div class="product-name text-center mb-2">--}}
{{--                <a href="{{ url()->to('/').'/products/' . $product->url_key }}" title="{{ $product->name }}">--}}
{{--                    <span>--}}
{{--                        {{ $product->name }}--}}
{{--                    </span>--}}
{{--                </a>--}}
{{--            </div>--}}

{{--            @include ('shop::products.price', ['product' => $product])--}}

{{--            @include('shop::products.add-buttons', ['product' => $product])--}}
{{--        </div>--}}

</div>

{!! view_render_event('bagisto.shop.products.list.card.after', ['product' => $product]) !!}