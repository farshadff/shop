@extends('shop::layouts.master')

@section('page_title')
    {{ __('shop::app.checkout.cart.title') }}
@stop

@section('content-wrapper')
    @inject ('productImageHelper', 'Webkul\Product\Helpers\ProductImage')
{{--    <div class="title">--}}
{{--        {{ __('shop::app.checkout.cart.title') }}--}}
{{--    </div>--}}

    <div class="container-fluid my-5 py-3 z-depth-1 rounded">
        <div class="row">
            <div class="col-lg-9">
                @if($cart)
            <form action="{{ route('shop.checkout.cart.update') }}" method="POST"
                  @submit.prevent="onSubmit">

            @csrf



            <!--Section: Content-->
                <section class="dark-grey-text">

                    <!-- Shopping Cart table -->
                    <div class="table-responsive">

                        <table class="table product-table mb-0">

                            <!-- Table head -->
                            <thead class="mdb-color lighten-5">
                            <tr>
                                <th></th>
                                <th class="font-weight-bold">
                                    <strong>نام محصول</strong>
                                </th>
                                <th class="font-weight-bold">
                                    <strong>سایز</strong>
                                </th>
                                <th></th>
                                <th class="font-weight-bold">
                                    <strong>قیمت</strong>
                                </th>
                                <th class="font-weight-bold">
                                    <strong>تعداد</strong>
                                </th>
                                <th class="font-weight-bold">

                                </th>
                                <th></th>
                            </tr>
                            </thead>
                            <!-- /.Table head -->
                            <tfoot>
                            <tr>
                                <th>
                                    @if (! cart()->hasError())
                                        <a href="{{ route('shop.checkout.onepage.index') }}"
                                           class="btn btn-lg btn-primary">
                                            {{ __('shop::app.checkout.cart.proceed-to-checkout') }}
                                        </a>
                                    @endif
                                </th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th>      {{ intval($cart->items_qty) }}
                                    {{ __('shop::app.checkout.total.sub-total') }}
                                    {{ core()->currency($cart->base_sub_total) }}</th>
                            </tr>
                            </tfoot>
                            <!-- Table body -->
                            <tbody>

                            @foreach ($cart->items as $key => $item)
                                <?php
                                if ($item->type == "configurable")
                                    $productBaseImage = $productImageHelper->getProductBaseImage($item->child->product);
                                else
                                    $productBaseImage = $productImageHelper->getProductBaseImage($item->product);
                                ?>
                                <!-- First row -->
                                <tr>
                                    <th scope="row">
                                        <a href="{{ url()->to('/').'/products/'.$item->product->url_key }}"><img
                                                src="{{ $productBaseImage['medium_image_url'] }}"
                                                class="img-fluid z-depth-0"/></a>
                                        {{--                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg"--}}
                                        {{--                                         alt="" class="img-fluid z-depth-0">--}}
                                    </th>
                                    <td>
                                        <h5 class="mt-3">
                                            <strong> <a
                                                    href="{{ url()->to('/').'/products/'.$item->product->url_key }}">
                                                    {{ $item->product->name }}
                                                </a></strong>
                                        </h5>
                                    </td>
                                    <td>{{$item->additional['size']}}</td>
                                    <td></td>
                                    <td>   {{ core()->currency($item->base_price) }}</td>

                                    <td class="font-weight-bold">
                                        <strong>
                                            <div class="misc">
                                                <div class="control-group"
                                                     :class="[errors.has('qty[{{$item->id}}]') ? 'has-error' : '']">
                                                    <div class="wrap">
                                                        <label
                                                            for="qty[{{$item->id}}]">{{ __('shop::app.checkout.cart.quantity.quantity') }}</label>

                                                        <input class="control quantity-change" value="-"
                                                               style="width: 35px; border-radius: 3px 0px 0px 3px;"
                                                               onclick="updateCartQunatity('remove', {{$key}})"
                                                               readonly>

                                                        <input type="text" class="control quantity-change width-25"
                                                               id="cart-quantity{{ $key
                                                    }}" v-validate="'required|numeric|min_value:1'"
                                                               name="qty[{{$item->id}}]"
                                                               value="{{ $item->quantity }}"
                                                               data-vv-as="&quot;{{ __('shop::app.checkout.cart.quantity.quantity') }}&quot;"
                                                               style="border-right: none; border-left: none; border-radius: 0px;"
                                                               readonly>

                                                        <input class="control quantity-change" value="+"
                                                               style="width: 35px; padding: 0 12px; border-radius: 0px 3px 3px 0px;"
                                                               onclick="updateCartQunatity('add', {{$key}})"
                                                               readonly>
                                                    </div>

                                                    <span class="control-error"
                                                          v-if="errors.has('qty[{{$item->id}}]')">@{{ errors.first('qty[{!!$item->id!!}]') }}</span>
                                                </div>
                                            </div>
                                        </strong>
                                    </td>
                                    <td>
                                        {{--                            <button type="button" class="" data-toggle="tooltip" data-placement="top"--}}
                                        {{--                                    title="Remove item">X--}}
                                        <a class="btn btn-sm btn-primary"
                                           href="{{ route('shop.checkout.cart.remove', $item->id) }}"
                                           onclick="removeLink('{{ __('shop::app.checkout.cart.cart-remove-action') }}')">x</a></span>

                                        {{--                            </button>--}}
                                    </td>
                                </tr>

                                <!-- /.First row -->
                            @endforeach


                            </tbody>
                            <!-- /.Table body -->

                        </table>

                    </div>
                    <!-- /.Shopping Cart table -->

                </section>
                <!--Section: Content-->



            </form>
            </div>
            <div class="col-lg-3">
                {!! view_render_event('bagisto.shop.checkout.cart.summary.after', ['cart' => $cart]) !!}

                @include('shop::checkout.total.summary', ['cart' => $cart])

                {!! view_render_event('bagisto.shop.checkout.cart.summary.after', ['cart' => $cart]) !!}
            </div>
             @else
{{--                <div class="title">--}}
{{--                    {{ __('shop::app.checkout.cart.title') }}--}}
{{--                </div>--}}

                <div class="cart-content">
                    <p class="text-center">
                        {{ __('shop::app.checkout.cart.empty') }}
                    </p>

                    <p class="text-center">
                        <a  href="{{ route('shop.home.index') }}"
                           class="text-center btn btn-lg btn-primary">{{ __('shop::app.checkout.cart.continue-shopping') }}</a>
                    </p>
                </div>
                 @endif
        </div>
        </div>


@endsection

@push('scripts')
    <script>
        function removeLink(message) {
            if (!confirm(message))
                event.preventDefault();
        }

        function updateCartQunatity(operation, index) {
            var quantity = document.getElementById('cart-quantity' + index).value;

            if (operation == 'add') {
                quantity = parseInt(quantity) + 1;
            } else if (operation == 'remove') {
                if (quantity > 1) {
                    quantity = parseInt(quantity) - 1;
                } else {
                    alert('{{ __('shop::app.products.less-quantity') }}');
                }
            }
            document.getElementById('cart-quantity' + index).value = quantity;
            event.preventDefault();
        }
    </script>
@endpush