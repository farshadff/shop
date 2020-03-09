<div class="container-fluid padding-0">

    <section class="home-hero padding-0">
        <div class="col-lg-12 padding-0">
{{--            <img src="{{url('/themes/nicolas/assets/images/ecco1.jpg')}}" alt="">--}}
            <div class="section1"></div>
            <div class="text-box-1 caption-hero text-center">
                <h1 class="text-center mt-90 light-color">
                    با نیکولاس همراه باشید
                </h1>
                <h3 class="text-center light-color mt-25">ماجراجویی در قبل طبیعت را با نیکولاس تجربه کنید چون همیشه همراه شما هستیم</h3>
                <a class="btn btn-1 btn-1e">بیشتر</a>

            </div>
        </div>
    </section>
    <section class="home-hero padding-0">
        <div class="col-lg-12 padding-0">
{{--            <img src="{{url('/themes/nicolas/assets/images/ecco2.jpg')}}" alt="">--}}
            <div class="section2"></div>

            <div class="text-box-2 caption-hero-2 text-center">
                <h1 class="text-center mt-90 light-color">
                    با نیکولاس همراه باشید
                </h1>
                <h3 class="text-center light-color mt-25">ماجراجویی در قبل طبیعت را با نیکولاس تجربه کنید چون همیشه همراه شما هستیم</h3>
                <a class="btn btn-1 btn-1e">بیشتر</a>
            </div>
        </div>
    </section>
    <section class="home-hero padding-0">
        <div class="col-lg-12 padding-0">
{{--            <img src="{{url('/themes/nicolas/assets/images/ecco3.jpg')}}" alt="">--}}
            <div class="section3"></div>

            <div class="text-box-1 caption-hero-3 text-center">

                <h1 class="text-center mt-90 light-color">
                    با نیکولاس همراه باشید
                </h1>
                <h3 class="text-center light-color mt-25">ماجراجویی در قبل طبیعت را با نیکولاس تجربه کنید چون همیشه همراه شما هستیم</h3>
                <a class="btn btn-1 btn-1e">بیشتر</a>

            </div>
        </div>
    </section>
    <section class="home-hero padding-0">
        <div class="col-lg-12 padding-0">
{{--            <img src="{{url('/themes/nicolas/assets/images/ecco4.jpg')}}" alt="">--}}
            <div class="section4"></div>

            <div class="text-box-2 caption-hero-2 text-center">
                <h1 class="text-center mt-90 light-color ">
                    با نیکولاس همراه باشید
                </h1>
                <h3 class="text-center light-color mt-25">ماجراجویی در قبل طبیعت را با نیکولاس تجربه کنید چون همیشه همراه شما هستیم</h3>
                <a class="btn btn-1 btn-1e">بیشتر</a>
            </div>
        </div>
    </section>
</div>

@if (app('Webkul\Product\Repositories\ProductRepository')->getFeaturedProducts()->count())
    <div class="container">
        <section class="featured-products">
            <div class="featured-heading mt-25">
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
