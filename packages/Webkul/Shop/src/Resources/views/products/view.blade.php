@extends('shop::layouts.master')

@section('page_title')
    {{ trim($product->meta_title) != "" ? $product->meta_title : $product->name }}
@stop

@section('seo')
    <meta name="description"
          content="{{ trim($product->meta_description) != "" ? $product->meta_description : str_limit(strip_tags($product->description), 120, '') }}"/>
    <meta name="keywords" content="{{ $product->meta_keywords }}"/>
@stop

@section('content-wrapper')

    {!! view_render_event('bagisto.shop.products.view.before', ['product' => $product]) !!}

{{--    <section class="product-detail">--}}

{{--        <div class="layouter">--}}
{{--            <product-view>--}}
{{--                <div class="form-container">--}}
{{--                    @csrf()--}}

{{--                    <input type="hidden" name="product" value="{{ $product->product_id }}">--}}

{{--                    @include ('shop::products.view.gallery')--}}

{{--                    <div class="details">--}}

{{--                        <div class="product-heading">--}}
{{--                            <span>{{ $product->name }}</span>--}}
{{--                        </div>--}}

{{--                        @include ('shop::products.review', ['product' => $product])--}}

{{--                        @include ('shop::products.price', ['product' => $product])--}}

{{--                        @include ('shop::products.view.stock', ['product' => $product])--}}

{{--                        {!! view_render_event('bagisto.shop.products.view.short_description.before', ['product' => $product]) !!}--}}

{{--                        <div class="description">--}}
{{--                            {!! $product->short_description !!}--}}
{{--                        </div>--}}

{{--                        {!! view_render_event('bagisto.shop.products.view.short_description.after', ['product' => $product]) !!}--}}


{{--                        {!! view_render_event('bagisto.shop.products.view.quantity.before', ['product' => $product]) !!}--}}

{{--                        <div class="quantity control-group" :class="[errors.has('quantity') ? 'has-error' : '']">--}}

{{--                            <label class="required">{{ __('shop::app.products.quantity') }}</label>--}}

{{--                            <input class="control quantity-change" value="-"--}}
{{--                                   style="width: 35px; border-radius: 3px 0px 0px 3px;"--}}
{{--                                   onclick="updateQunatity('remove')" readonly>--}}

{{--                            <input name="quantity" id="quantity" class="control quantity-change" value="1"--}}
{{--                                   v-validate="'required|numeric|min_value:1'"--}}
{{--                                   style="width: 60px; position: relative; margin-left: -4px; margin-right: -4px; border-right: none;border-left: none; border-radius: 0px;"--}}
{{--                                   data-vv-as="&quot;{{ __('shop::app.products.quantity') }}&quot;" readonly>--}}

{{--                            <input class="control quantity-change" value="+"--}}
{{--                                   style="width: 35px; padding: 0 12px; border-radius: 0px 3px 3px 0px;"--}}
{{--                                   onclick=updateQunatity('add') readonly>--}}

{{--                            <span class="control-error"--}}
{{--                                  v-if="errors.has('quantity')">@{{ errors.first('quantity') }}</span>--}}
{{--                        </div>--}}

{{--                        {!! view_render_event('bagisto.shop.products.view.quantity.after', ['product' => $product]) !!}--}}

{{--                        @if ($product->type == 'configurable')--}}
{{--                            <input type="hidden" value="true" name="is_configurable">--}}
{{--                        @else--}}
{{--                            <input type="hidden" value="false" name="is_configurable">--}}
{{--                        @endif--}}

{{--                        @include ('shop::products.view.configurable-options')--}}

{{--                        {!! view_render_event('bagisto.shop.products.view.description.before', ['product' => $product]) !!}--}}

{{--                        <accordian :title="'{{ __('shop::app.products.description') }}'" :active="true">--}}
{{--                            <div slot="header">--}}
{{--                                {{ __('shop::app.products.description') }}--}}
{{--                                <i class="icon expand-icon right"></i>--}}
{{--                            </div>--}}

{{--                            <div slot="body">--}}
{{--                                <div class="full-description">--}}
{{--                                    {!! $product->description !!}--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </accordian>--}}

{{--                        {!! view_render_event('bagisto.shop.products.view.description.before', ['product' => $product]) !!}--}}

{{--                        @include ('shop::products.view.attributes')--}}

{{--                        @include ('shop::products.view.reviews')--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </product-view>--}}
{{--        </div>--}}

{{--        @include ('shop::products.view.related-products')--}}

{{--        @include ('shop::products.view.up-sells')--}}

{{--    </section>--}}

    @inject ('productImageHelper', 'Webkul\Product\Helpers\ProductImage')

    <div class="container-fluid mt-25">
        <div class="row">
           <div class="col-lg-8">
                <div class="example example1">

                    <div class="slider slider-for">
                        @foreach($productImageHelper->getGalleryImages($product,(int)request()->get('color_id')) as $item)
                        <div><img class="m-auto img-slider img-fluid" src="{{$item['large_image_url']}}" alt=""></div>
                        @endforeach
                    </div>
                    <div class="slider slider-nav">
                            @foreach($productImageHelper->getGalleryImages($product,(int)request()->get('color_id')) as $item)
                            <div class="nav-items"><p><img class="img-fluid" src="{{$item['large_image_url']}}" alt=""></p></div>
                            @endforeach
                        </div>
                </div>
            </div>

           <div class="col-lg-4 aside-product">
                <div class="product-title mb-20">
                    <h1 class="mt-25">{{ $product->name }}</h1>
                    <span class="text-muted mt-25 mb-30">{{$product->sku}}</span>
                    <hr class="mt-25 mb-20">
                    @include ('shop::products.price', ['product' => $product])
                    <hr class="mt-25 mb-20">

                    @include ('shop::products.view.stock', ['product' => $product])
                    <form action="{{ route('shop.products.index', $product->url_key) }}" id="color_form" method="get">
                        @foreach($productImageHelper->getProductImageColor($product) as $item)
                        <label class="circle black">
                            <img class="img-fluid" src="{{$item['small_image_url']}}" alt="">
                            <input type="radio" name="color_id" value="{{$item['color_id']}}">
                        </label>
                        @endforeach
                    </form>
                </div>
                <div class="size-area mt-25">
                    <ul class="nav nav-tabs size-tab" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                               aria-controls="home"
                               aria-selected="true">سایز موجود</a>
                        </li>

                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                            <span class="size-icon text-muted">32</span>
                        </div>

                    </div>
                </div>
                <div class="more-info pt-3">
                    <p class="text-center">
                        {!! $product->short_description !!}

                    </p>
                </div>
            </div>
        </div>
    </div>

    {!! view_render_event('bagisto.shop.products.view.after', ['product' => $product]) !!}
@endsection

@push('scripts')
    <script>
        const form = document.querySelector('#color_form');
        form.addEventListener('change', function(event) {
            form.submit();
        });
    </script>
    <script type="text/x-template" id="product-view-template">
        <form method="POST" id="product-form" action="{{ route('cart.add', $product->product_id) }}"
              @click="onSubmit($event)">

            <slot></slot>

        </form>
    </script>

    <script>

        Vue.component('product-view', {

            template: '#product-view-template',

            inject: ['$validator'],

            methods: {
                onSubmit: function (e) {
                    if (e.target.getAttribute('type') != 'submit')
                        return;

                    e.preventDefault();

                    this.$validator.validateAll().then(function (result) {
                        if (result) {
                            if (e.target.getAttribute('data-href')) {
                                window.location.href = e.target.getAttribute('data-href');
                            } else {
                                document.getElementById('product-form').submit();
                            }
                        }
                    });
                }
            }
        });

        $(document).ready(function () {
            var addTOButton = document.getElementsByClassName('add-to-buttons')[0];
            document.getElementById('loader').style.display = "none";
            addTOButton.style.display = "flex";
        });

        window.onload = function () {
            var thumbList = document.getElementsByClassName('thumb-list')[0];
            var thumbFrame = document.getElementsByClassName('thumb-frame');
            var productHeroImage = document.getElementsByClassName('product-hero-image')[0];

            if (thumbList && productHeroImage) {

                for (let i = 0; i < thumbFrame.length; i++) {
                    thumbFrame[i].style.height = (productHeroImage.offsetHeight / 4) + "px";
                    thumbFrame[i].style.width = (productHeroImage.offsetHeight / 4) + "px";
                }

                if (screen.width > 720) {
                    thumbList.style.width = (productHeroImage.offsetHeight / 4) + "px";
                    thumbList.style.minWidth = (productHeroImage.offsetHeight / 4) + "px";
                    thumbList.style.height = productHeroImage.offsetHeight + "px";
                }
            }

            window.onresize = function () {
                if (thumbList && productHeroImage) {

                    for (let i = 0; i < thumbFrame.length; i++) {
                        thumbFrame[i].style.height = (productHeroImage.offsetHeight / 4) + "px";
                        thumbFrame[i].style.width = (productHeroImage.offsetHeight / 4) + "px";
                    }

                    if (screen.width > 720) {
                        thumbList.style.width = (productHeroImage.offsetHeight / 4) + "px";
                        thumbList.style.minWidth = (productHeroImage.offsetHeight / 4) + "px";
                        thumbList.style.height = productHeroImage.offsetHeight + "px";
                    }
                }
            }
        };

        function updateQunatity(operation) {
            var quantity = document.getElementById('quantity').value;

            if (operation == 'add') {
                quantity = parseInt(quantity) + 1;
            } else if (operation == 'remove') {
                if (quantity > 1) {
                    quantity = parseInt(quantity) - 1;
                } else {
                    alert('{{ __('shop::app.products.less-quantity') }}');
                }
            }
            document.getElementById("quantity").value = quantity;

            event.preventDefault();
        }
    </script>
@endpush