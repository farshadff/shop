@extends('shop::layouts.master')
@section('page_title')
    {{ __('shop::app.customer.signup-form.page-title') }}
@endsection
@section('content-wrapper')


    <section>

        <!-- Google map -->
        <div id="map-container" class="z-depth-1-half map-container" style="height: 500px">

            <iframe
                src="https://maps.google.com/maps/embed?pb=!1m18!1m12!1m3!1d572.8015199500701!2d51.42884960787962!3d35.695349110029255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8e018878ceeb19%3A0xc065d0e93e44626!2sSimon%20Leather!5e0!3m2!1sen!2suk!4v1581589666968!5m2!1sen!2suk"
                frameborder="0"
                style="border:0" allowfullscreen></iframe>
        </div>

    </section>

    <!-- Main Layout -->
    <main>

        <div class="container-fluid mb-5">

            <!-- Grid row -->
            <div class="row" style="margin-top: -140px;">

                <!-- Grid column -->
                <div class="col-md-12">

                    <div class="card pb-5">

                        <div class="card-body">

                            <div class="container">

                                <!-- Section: Contact v.3 -->
                                <section class="contact-section my-5">

                                    <!-- Form with header -->
                                    <div class="card">

                                        <!-- Grid row -->
                                        <div class="row">

                                            <!-- Grid column -->
                                            <div class="col-lg-8">

                                                <div class="card-body form">

                                                    <!-- Header -->
                                                    <h3 class="mt-4"><i class="fas fa-envelope pr-2"></i>تماس با ما</h3>
                                                    <form method="post" action="{{route('shop.contact.store')}}">

                                                    <!-- Grid row -->
                                                    <div class="row">
                                                        @csrf()
                                                        <!-- Grid column -->
                                                            <div class="col-md-6">

                                                                <div class="md-form mb-0">

                                                                    <input name="name" type="text" id="form-contact-name"
                                                                           class="form-control">

                                                                    <label for="form-contact-name" class="">نام</label>

                                                                </div>

                                                            </div>
                                                            <!-- Grid column -->

                                                            <!-- Grid column -->
                                                            <div class="col-md-6">

                                                                <div class="md-form mb-0">

                                                                    <input name="email" type="text" id="form-contact-email"
                                                                           class="form-control">

                                                                    <label for="form-contact-email"
                                                                           class="">ایمیل</label>

                                                                </div>

                                                            </div>
                                                            <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->

                                                    <!-- Grid row -->
                                                    <div class="row">

                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0">

                                                                <input  name="mobile" type="text" id="form-contact-phone"
                                                                       class="form-control">

                                                                <label  for="form-contact-phone" class="">شماره
                                                                    تماس</label>

                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0">

                                                                <input name="branch" type="text" id="form-contact-company"
                                                                       class="form-control">

                                                                <label for="form-contact-company" class="">شعبه</label>

                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->

                                                    <!-- Grid row -->
                                                    <div class="row">

                                                        <!-- Grid column -->
                                                        <div class="col-md-12">

                                                            <div class="md-form mb-0">

                                <textarea name="message" type="text" id="form-contact-message" class="form-control md-textarea"
                                          rows="3"></textarea>

                                                                <label for="form-contact-message">متن پیام</label>

                                                                <button type="submit"
                                                                        class="btn-floating btn-lg blue float-right">

                                                                    <i class="far fa-paper-plane"></i>

                                                                </button>

                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->
                                                    </form>
                                                </div>

                                            </div>
                                            <!-- Grid column -->

                                            <!-- Grid column -->
                                            <div class="col-lg-4">

                                                <div class="card-body contact text-center h-100 white-text">

                                                    <h3 class="my-4 pb-2">اطلاعات تماس</h3>

                                                    <ul class="text-lg-left list-unstyled ml-4">

                                                        <li>

                                                            <p><i class="fas fa-map-marker-alt pr-2 mb-4"></i>تهران
                                                                بهارستان</p>

                                                        </li>

                                                        <li>

                                                            <p><i class="fas fa-phone pr-2 mb-4"></i>09192244689</p>

                                                        </li>

                                                        <li>

                                                            <p><i class="fas fa-envelope pr-2"></i>info@nicolas.com</p>

                                                        </li>

                                                    </ul>

                                                    <hr class="hr-light my-4">

                                                    <ul class="list-inline text-center list-unstyled">

                                                        <li class="list-inline-item">

                                                            <a class="p-2 fa-lg tw-ic">

                                                                <i class="fab fa-twitter"></i>

                                                            </a>

                                                        </li>

                                                        <li class="list-inline-item">

                                                            <a class="p-2 fa-lg li-ic">

                                                                <i class="fab fa-linkedin-in"> </i>

                                                            </a>

                                                        </li>

                                                        <li class="list-inline-item">

                                                            <a class="p-2 fa-lg ins-ic">

                                                                <i class="fab fa-instagram"> </i>

                                                            </a>

                                                        </li>

                                                    </ul>

                                                </div>

                                            </div>
                                            <!-- Grid column -->

                                        </div>
                                        <!-- Grid row -->

                                    </div>
                                    <!-- Form with header -->

                                </section>
                                <!-- Section: Contact v.3 -->

                            </div>

                        </div>

                    </div>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>

    </main>
    <!-- Main Layout -->
@endsection
