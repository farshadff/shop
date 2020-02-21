@extends('shop::layouts.master')
@section('page_title')
    {{ __('shop::app.customer.signup-form.page-title') }}
@endsection
@section('content-wrapper')


    <div class="container my-5">

        <section>

            <div class="card mb-4">

                <div class="row">

                    <div class="col-md-6">
                        <img class="img-fluid rounded-left" src="https://mdbootstrap.com/img/Photos/Vertical/7.jpg" alt="project image">
                    </div>

                    <div class="col-md-6 p-5 align-self-center">

                        <h5 class="font-weight-normal mb-3">درباره نیکلاس</h5>

                        <p class="text-muted text-justify about-us-text">
                            لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.

                        </p>

                        <ul class="list-unstyled font-small mt-5 mb-0">

                            <li>
                                <p class="text-uppercase mb-2"><strong>تاریخ تاسیس</strong></p>
                                <p class="text-muted mb-4">18 خرداد 1389</p>
                            </li>

                            <li>
                                <p class="text-uppercase mb-2"><strong>افتخارات</strong></p>
                                <p class="text-muted mb-4">برترین تولید کننده 98</p>
                            </li>

                            <li>
                                <p class="text-uppercase mt-4 mb-2"><strong>شبکه های اجتماعی</strong></p>
                                <div class="d-flex justify-content-start">
                                    <a class="text-muted pr-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="text-muted pr-3" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="text-muted pr-3" href="#"><i class="fab fa-instagram"></i></a>
                                    <a class="text-muted" href="#"><i class="fab fa-dribbble"></i></a>
                                </div>
                            </li>

                        </ul>

                    </div>

                </div>

            </div>

        </section>

    </div>
@endsection
