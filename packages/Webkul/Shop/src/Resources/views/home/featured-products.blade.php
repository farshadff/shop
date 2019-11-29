@if (app('Webkul\Product\Repositories\ProductRepository')->getFeaturedProducts()->count())
    <div class="container">
        <section class="featured-products">
            <div class="featured-heading">
                {{ __('shop::app.home.featured-products') }}<br/>

                <span class="featured-seperator" style="color:lightgrey;">_____</span>
            </div>

            <div class="row">

                @foreach (app('Webkul\Product\Repositories\ProductRepository')->getFeaturedProducts() as $productFlat)

                    @include ('shop::products.list.card', ['product' => $productFlat])

                @endforeach

            </div>
        </section>
    </div>
@endif