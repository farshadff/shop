@extends('shop::layouts.master')
@section('page_title')
    {{ __('shop::app.customer.signup-form.page-title') }}
@endsection
@section('content-wrapper')

<div class="auth-content">


    {!! view_render_event('bagisto.shop.customers.signup.before') !!}

    <form method="post" action="{{ route('customer.register.send-sms') }}" @submit.prevent="onSubmit">

        {{ csrf_field() }}

        <div class="login-form">
            <div class="login-text">{{ __('shop::app.customer.signup-form.title') }}</div>

            {!! view_render_event('bagisto.shop.customers.signup_form_controls.before') !!}

            <div class="control-group" :class="[errors.has('first_name') ? 'has-error' : '']">
                <label for="first_name" class="required">{{ __('shop::app.customer.signup-form.enter-mobile') }}</label>
                <input type="text" class="control" name="mobile" v-validate="'required'" value="{{ old('first_name') }}" data-vv-as="&quot;{{ __('shop::app.customer.signup-form.firstname') }}&quot;">
                <span class="control-error" v-if="errors.has('first_name')">@{{ errors.first('first_name') }}</span>
            </div>

            {!! view_render_event('bagisto.shop.customers.signup_form_controls.after') !!}

            {{-- <div class="control-group" :class="[errors.has('agreement') ? 'has-error' : '']">

                <input type="checkbox" id="checkbox2" name="agreement" v-validate="'required'" data-vv-as="&quot;{{ __('shop::app.customer.signup-form.agreement') }}&quot;">
                <span>{{ __('shop::app.customer.signup-form.agree') }}
                    <a href="">{{ __('shop::app.customer.signup-form.terms') }}</a> & <a href="">{{ __('shop::app.customer.signup-form.conditions') }}</a> {{ __('shop::app.customer.signup-form.using') }}.
                </span>
                <span class="control-error" v-if="errors.has('agreement')">@{{ errors.first('agreement') }}</span>
            </div> --}}

            <button     class="btn btn-primary btn-lg m-auto" type="submit">

                {{ __('shop::app.customer.signup-form.submit') }}
            </button>

        </div>
    </form>

    {!! view_render_event('bagisto.shop.customers.signup.after') !!}
</div>
@endsection
