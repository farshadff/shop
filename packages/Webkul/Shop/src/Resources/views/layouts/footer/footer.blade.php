<div class="footer">
    <div class="footer-content">
        <div class="footer-list-container">

            <?php
            $categories = [];

            foreach (app('Webkul\Category\Repositories\CategoryRepository')->getVisibleCategoryTree(core()->getCurrentChannel()->root_category_id) as $category) {
                if ($category->slug)
                    array_push($categories, $category);
            }
            ?>

            @if (count($categories))
                <div class="list-container">
                    <span class="list-heading">راهنما</span>
                    <ul class="list-group">
                        {{--                        @foreach ($categories as $key => $category)--}}
                        <li>
                            <a href="">راهنمای خرید از نیکلاس</a>

                        </li>
                        <li>
                            <a href="">نحوه ثبت سفارش</a>

                        </li>
                        <li>
                            <a href="">رویه ارسال سفارش</a>

                        </li>
                        <li>
                            <a href="">شیوه های پرداخت</a>
                        </li>
                        {{--                        @endforeach--}}
                    </ul>
                </div>
            @endif

{{--            {!! DbView::make(core()->getCurrentChannel())->field('footer_content')->render() !!}--}}
                <div class="list-container">
                    <span class="list-heading">خدمات مشتریان</span>
                    <ul class="list-group">
                        {{--                        @foreach ($categories as $key => $category)--}}
                        <li>
                            <a href="">خدمات مشتریان</a>

                        </li>
                        <li>
                            <a href="">باشگاه مشتریان</a>

                        </li>
                        <li>
                            <a href="">پیگیری سفارشات</a>

                        </li>
                        <li>
                            <a href="">گارانتی</a>
                        </li>
                        <li>
                            <a href="">نظرات و پیشنهادات</a>
                        </li>
                        <li>
                            <a href="">سوالات متداول</a>
                        </li>
                        <li>
                            <a href="">بازدید مجازی</a>
                        </li>
                        {{--                        @endforeach--}}
                    </ul>
                </div>
                <div class="list-container">
                    <span class="list-heading">همکاری</span>
                    <ul class="list-group">
                        {{--                        @foreach ($categories as $key => $category)--}}
                        <li>
                            <a href="">فرصت های شغلی</a>

                        </li>
                        <li>
                            <a href="">اعطای نمایندگی</a>

                        </li>
                        <li>
                            <a href="">واحد تبلیغات</a>

                        </li>
                        <li>
                            <a href="">دانلود ها</a>
                        </li>
                        <li>
                            <a href="">فرم ها</a>
                        </li>
                        <li>
                            <a href="">فروش سازمانی</a>
                        </li>
                        <li>
                            <a href="">بازدید مجازی</a>
                        </li>
                        {{--                        @endforeach--}}
                    </ul>
                </div>
            <div class="list-container">
                @if(core()->getConfigData('customer.settings.newsletter.subscription'))
                    <span class="list-heading">{{ __('shop::app.footer.subscribe-newsletter') }}</span>
                    <div class="form-container">
                        <form action="{{ route('shop.subscribe') }}">
                            <div class="control-group" :class="[errors.has('subscriber_email') ? 'has-error' : '']">
                                <input type="email" class="control subscribe-field" name="subscriber_email"
                                       placeholder=" ایمیل خود را وارد کنید" required><br/>

                                <button
                                    class="btn btn-md btn-primary">{{ __('shop::app.subscription.subscribe') }}</button>
                            </div>
                        </form>
                    </div>
                @endif

                <?php
                $query = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
                $searchTerm = explode("&", $query);

                foreach ($searchTerm as $term) {
                    if (strpos($term, 'term') !== false) {
                        $serachQuery = $term;
                    }
                }
                ?>

                <span class="list-heading">{{ __('shop::app.footer.locale') }}</span>
                <div class="form-container">
                    <div class="control-group">
                        <select class="control locale-switcher" onchange="window.location.href = this.value"
                                @if (count(core()->getCurrentChannel()->locales) == 1) disabled="disabled" @endif>

                            @foreach (core()->getCurrentChannel()->locales as $locale)
                                @if (isset($serachQuery))
                                    <option
                                        value="?{{ $serachQuery }}&locale={{ $locale->code }}" {{ $locale->code == app()->getLocale() ? 'selected' : '' }}>{{ $locale->name }}</option>
                                @else
                                    <option
                                        value="?locale={{ $locale->code }}" {{ $locale->code == app()->getLocale() ? 'selected' : '' }}>{{ $locale->name }}</option>
                                @endif
                            @endforeach

                        </select>
                    </div>
                </div>

{{--                <div class="currency">--}}
{{--                    <span class="list-heading">{{ __('shop::app.footer.currency') }}</span>--}}
{{--                    <div class="form-container">--}}
{{--                        <div class="control-group">--}}
{{--                            <select class="control locale-switcher" onchange="window.location.href = this.value">--}}

{{--                                @foreach (core()->getCurrentChannel()->currencies as $currency)--}}
{{--                                    @if (isset($serachQuery))--}}
{{--                                        <option--}}
{{--                                            value="?{{ $serachQuery }}&currency={{ $currency->code }}" {{ $currency->code == core()->getCurrentCurrencyCode() ? 'selected' : '' }}>{{ $currency->code }}</option>--}}
{{--                                    @else--}}
{{--                                        <option--}}
{{--                                            value="?currency={{ $currency->code }}" {{ $currency->code == core()->getCurrentCurrencyCode() ? 'selected' : '' }}>{{ $currency->code }}</option>--}}
{{--                                    @endif--}}
{{--                                @endforeach--}}

{{--                            </select>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}

            </div>
        </div>

    </div>
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">تمامی حقوق مادی و معنوی این سایت متعلق به
        <a href="{{url('/')}}"> شرکت چرم نیکلاس است</a>
    </div>
    <!-- Copyright -->
</div>
