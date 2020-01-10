@extends('admin::layouts.content')

{{--@section('page_title')--}}
{{--    {{ __('admin::app.sales.orders.title') }}--}}
{{--@stop--}}

@section('content')
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h1>Today orders</h1>
            </div>


            {{--            <div class="page-action">--}}
            {{--                <div class="export-import" @click="showModal('downloadDataGrid')">--}}
            {{--                    <i class="export-icon"></i>--}}
            {{--                    <span>--}}
            {{--                        {{ __('admin::app.export.export') }}--}}
            {{--                    </span>--}}
            {{--                </div>--}}
            {{--                <button onclick="" class="btn btn-lg btn-primary button">صدور کل سفارشات امروز</button>--}}


            {{--            </div>--}}
        </div>

        {{--        <div class="page-content">--}}
        {{--            @inject('orderGrid', 'Webkul\Admin\DataGrids\OrderDataGrid')--}}
        {{--            {!! $orderGrid->render() !!}--}}
        {{--        </div>--}}
        <div class="container">
            <div class="row">
                @foreach($orders as $order)
                    <div class="col-lg-6">
                    <span>شماره سفارش :</span> {{$order->id}} <br>
                    {{$order->shipping_title}}
                    {{$order->grand_total}}
                    </div>
                <div class="col-lg-6">
                    @foreach($order->addresses as $address)
                        {{$address->first_name}}
                        {{$address->last_name}}
                        {{$address->email}}
                        {{$address->address1}}
                        {{$address->address2}}
                        {{$address->city}}
                        {{$address->postcode}}
                        {{$address->phone}}
                        {{$address->address_type}}
                        {{$address->order_id}}
                        <br>
                    @endforeach
                </div>
                @endforeach
            </div>
        </div>
    </div>

    {{--    <modal id="downloadDataGrid" :is-open="modalIds.downloadDataGrid">--}}
    {{--        <h3 slot="header">{{ __('admin::app.export.download') }}</h3>--}}
    {{--        <div slot="body">--}}
    {{--            <export-form></export-form>--}}
    {{--        </div>--}}
    {{--    </modal>--}}

@stop

{{--@push('scripts')--}}
{{--    @include('admin::export.export', ['gridName' => $orderGrid])--}}
{{--@endpush--}}