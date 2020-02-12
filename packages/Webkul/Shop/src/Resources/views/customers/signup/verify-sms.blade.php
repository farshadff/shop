@extends('shop::layouts.master')
@section('page_title')
    {{ __('shop::app.customer.signup-form.page-title') }}
@endsection
@section('content-wrapper')

<div class="auth-content">


    {!! view_render_event('bagisto.shop.customers.signup.before') !!}

    <form method="post" action="{{ route('customer.register.verify') }}" @submit.prevent="onSubmit">

        {{ csrf_field() }}
        <input type="hidden" name="mobile" value="{{$cellphone}}">
        <div class="container my-5 z-depth-1">


            <!--Section: Content-->
            <section class="dark-grey-text text-center px-md-5 py-5">

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-lg-6 col-md-8 mx-auto">

                        <!-- Form -->
                        <form class="" action="">

                            <!-- Section heading -->
                            <h3 class="font-weight-bold mb-4">{{ __('shop::app.customer.signup-form.title') }}</h3>

                            <p class="text-muted mb-4 pb-2"></p>
                            <p class="text-muted mb-4 pb-2">لطفا کد ارسالی به تلفن همراه خود را وارد کنید این کد تا 10 دقیقه آینده معتبر میباشد و پس از آن اعتبار ندارد  </p>

                            <div class="input-group mb-4 pb-3">
                                <input type="text" class="form-control" name="code" placeholder="کد را وارد کنید" aria-label="کد را وارد کنید"
                                       aria-describedby="button-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-md btn-info rounded-right m-0 px-3 py-2 z-depth-0 waves-effect" type="submit" id="button-addon2"> {{ __('shop::app.customer.signup-form.submit') }}</button>
                                </div>
                            </div>

                            <ul class="list-unstyled d-flex justify-content-center mb-0 text-info">
                                <li>
                                    <a class="mx-3" role="button"><i class="fab fa-lg fa-facebook-f"></i></a>
                                </li>
                                <li>
                                    <a class="mx-3" role="button"><i class="fab fa-lg fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a class="mx-3" role="button"><i class="fab fa-lg fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a class="mx-3" role="button"><i class="fab fa-lg fa-linkedin-in"></i></a>
                                </li>
                                <li>
                                    <a class="mx-3" role="button"><i class="fab fa-lg fa-pinterest"></i></a>
                                </li>
                            </ul>

                        </form>
                        <!-- Form -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </section>
            <!--Section: Content-->


        </div>








{{--        <div class="login-form">--}}
{{--            <div class="login-text">{{ __('shop::app.customer.signup-form.title') }}</div>--}}

{{--            {!! view_render_event('bagisto.shop.customers.signup_form_controls.before') !!}--}}

{{--            <div class="control-group" :class="[errors.has('first_name') ? 'has-error' : '']">--}}
{{--                <label for="first_name" class="required">{{ __('shop::app.customer.signup-form.verify-sms-title') }}</label>--}}
{{--                <input type="text" class="control" name="code">--}}
{{--                <span class="control-error" v-if="errors.has('first_name')">@{{ errors.first('first_name') }}</span>--}}
{{--            </div>--}}

{{--            {!! view_render_event('bagisto.shop.customers.signup_form_controls.after') !!}--}}

{{--            --}}{{-- <div class="control-group" :class="[errors.has('agreement') ? 'has-error' : '']">--}}

{{--                <input type="checkbox" id="checkbox2" name="agreement" v-validate="'required'" data-vv-as="&quot;{{ __('shop::app.customer.signup-form.agreement') }}&quot;">--}}
{{--                <span>{{ __('shop::app.customer.signup-form.agree') }}--}}
{{--                    <a href="">{{ __('shop::app.customer.signup-form.terms') }}</a> & <a href="">{{ __('shop::app.customer.signup-form.conditions') }}</a> {{ __('shop::app.customer.signup-form.using') }}.--}}
{{--                </span>--}}
{{--                <span class="control-error" v-if="errors.has('agreement')">@{{ errors.first('agreement') }}</span>--}}
{{--            </div> --}}

{{--            <button     class="btn btn-primary btn-lg m-auto" type="submit">--}}

{{--                {{ __('shop::app.customer.signup-form.submit') }}--}}
{{--            </button>--}}

{{--        </div>--}}
    </form>

    {!! view_render_event('bagisto.shop.customers.signup.after') !!}
</div>
@endsection
