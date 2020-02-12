@extends('shop::layouts.master')
@section('page_title')
    {{ __('shop::app.customer.signup-form.page-title') }}
@endsection
@section('content-wrapper')

<div class="auth-content">


    {!! view_render_event('bagisto.shop.customers.signup.before') !!}

    <form method="post" action="{{ route('customer.register.send-sms') }}" @submit.prevent="onSubmit">


        {{ csrf_field() }}
        <div class="container my-5 z-depth-1">


            <!--Section: Content-->
            <section class="dark-grey-text p-5">

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-md-5 mb-4 mb-md-0">

                        <div class="view">
                            <img src="https://mdbootstrap.com/img/illustrations/undraw_Group_chat_unwm.svg" class="img-fluid" alt="smaple image">
                        </div>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-7 mb-lg-0 mb-4">

                        <!-- Form -->
                        <form class="" action="">

                            <!-- Section heading -->
                            <h3 class="font-weight-bold my-3">{{ __('shop::app.customer.signup-form.title') }}</h3>

                            <p class="text-muted mb-4 pb-2"> {{ __('shop::app.customer.signup-form.enter-mobile') }}
                            </p>

                            <div class="input-group">
                                <input class="form-control"  name="mobile" v-validate="'required'" placeholder="0919-xxxxxxx" aria-label="Enter your email address"
                                       aria-describedby="button-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-md btn-primary rounded-right m-0 px-3 py-2 z-depth-0 waves-effect" type="submit" id="button-addon2">                {{ __('shop::app.customer.signup-form.submit') }}
                                    </button>
                                </div>
                            </div>
                            <small class="form-text black-text"><strong></strong></small>

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
{{--                <label for="first_name" class="required">{{ __('shop::app.customer.signup-form.enter-mobile') }}</label>--}}
{{--                <input type="text" class="control" name="mobile" v-validate="'required'" value="{{ old('first_name') }}" data-vv-as="&quot;{{ __('shop::app.customer.signup-form.firstname') }}&quot;">--}}
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
