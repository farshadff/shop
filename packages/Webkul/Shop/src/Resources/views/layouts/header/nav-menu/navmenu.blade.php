{!! view_render_event('bagisto.shop.layout.header.category.before') !!}

<?php

$categories = [];

foreach (app('Webkul\Category\Repositories\CategoryRepository')->getVisibleCategoryTree(core()->getCurrentChannel()->root_category_id) as $category) {
    if ($category->slug)
        array_push($categories, $category);
}

?>

{{--<category-nav categories='@json($categories)' url="{{url()->to('/')}}"></category-nav>--}}
<!--Main Navigation-->
<header>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light white">
{{--        <img src="" alt="">--}}
        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
                aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">

                <!-- News -->
                <li class="nav-item">
                    <a class="nav-link active" href="{{url('/')}}">خانه</a>
                </li>
                <li class="nav-item dropdown mega-dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">محصولات
                        <span class="sr-only">(current)</span>
                    </a>
                    <div class="dropdown-menu mega-menu v-1 z-depth-1 white py-5 px-3"
                         aria-labelledby="navbarDropdownMenuLink1">
                        <div class="row">
                            <div class="col-md-5 col-xl-3 sub-menu mb-xl-0 mb-5">
                                <ul class="list-unstyled">
                                    <li class="sub-title text-uppercase">
                                        <a class="menu-item pl-1 mt-2" href="{{url('/categories/men')}}">
                                            کیف
                                        </a>
                                    </li>
                                    <li class="sub-title text-uppercase">
                                        <a class="menu-item pl-1 mt-2" href="{{url('/categories/men')}}">
                                            کفش
                                        </a>
                                    </li>
                                    <li class="sub-title text-uppercase">
                                        <a class="menu-item pl-1 mt-2" href="{{url('/categories/men')}}">
                                            کمربند
                                        </a>
                                    </li>
                                    <li class="sub-title text-uppercase">
                                        <a class="menu-item pl-1 mt-2" href="{{url('/categories/men')}}">
                                            بوت
                                        </a>
                                    </li>
                                    <li class="sub-title text-uppercase">
                                        <a class="menu-item pl-1 mt-2" href="{{url('/categories/men')}}">
                                            جا سویچی
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-7 col-xl-4 sub-menu mb-xl-0 mb-4">
                                <h6 class="sub-title pb-3 text-uppercase font-weight-bold">برترین</h6>
                                <!--Featured image-->
                                <a href="{{url('/categories/men')}}" class="view overlay z-depth-1 p-0 my-3">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(42).jpg"
                                         class="img-fluid" alt="First sample image">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                                <a class="news-title font-weight-bold pl-0" href="{{url('/categories/men')}}">برترین محصول ماه از نظر مشتریان</a>
{{--                                <p class="font-small text-uppercase text-muted">By <a class="p-0 m-sm" href="{{url('/categories/men')}}">Anna Doe</a> ---}}
{{--                                    July 15, 2017</p>--}}
                            </div>
                            <div class="col-md-12 col-xl-5 sub-menu mb-md-0 mb-xl-0 mb-4">
                                <h6 class="sub-title pb-3 text-uppercase font-weight-bold">همیشه تخفیف</h6>
                                <div class="news-single">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!--Image-->
                                            <a href="{{url('/categories/men')}}" class="view overlay z-depth-1 p-0 my-3">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(43).jpg"
                                                     class="img-fluid" alt="First sample image">
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>
                                        <div class="col-md-8">
                                            <a class="news-title smaller mt-md-2 pl-0" href="{{url('/categories/men')}}">کیف چرم مخصوص اداری</a>
                                            <p class="font-small text-uppercase text-muted">اسفند 98</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="news-single">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!--Image-->
                                            <a href="{{url('/categories/men')}}" class="view overlay z-depth-1 p-0 mb-3 mt-4">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(44).jpg"
                                                     class="img-fluid" alt="First sample image">
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>
                                        <div class="col-md-8">
                                            <a class="news-title smaller mt-md-2 pl-0" href="{{url('/categories/men')}}">کفش اسپرت زنانه</a>
                                            <p class="font-small text-uppercase text-muted">اسفند 98</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="news-single">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!--Image-->
                                            <a href="{{url('/categories/men')}}" class="view overlay z-depth-1 p-0 mb-3 mt-4">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(41).jpg"
                                                     class="img-fluid" alt="First sample image">
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>
                                        <div class="col-md-8">
                                            <a class="news-title smaller mt-2 pl-0" href="{{url('/categories/men')}}">کفش مردانه اداری رسمی</a>
                                            <p class="font-small text-uppercase text-muted">فروردین 99</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown mega-dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">دسته بندی ها
                        <span class="sr-only">(current)</span>
                    </a>
                    <div class="dropdown-menu mega-menu v-1 z-depth-1 white py-5 px-3"
                         aria-labelledby="navbarDropdownMenuLink1">
                        <div class="row">

                            <div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
                                <h6 class="sub-title text-uppercase font-weight-bold">مردانه</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>اداری
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>مجلسی
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>اسپرت
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کفش
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کیف
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-xl-4 sub-menu mb-0">
                                <h6 class="sub-title text-uppercase font-weight-bold">زنانه</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>اداری
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>مجلسی
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>اسپرت
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کفش
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کیف
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-xl-4 sub-menu mb-0">
                                <h6 class="sub-title text-uppercase font-weight-bold">بچه گانه</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>بالای 10 سال
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>زیر 10 سال
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کیف مدرسه
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کفش اسپرت
                                        </a>
                                    </li>
                                    <li>
                                        <a class="menu-item pl-0 waves-effect waves-light" href="{{url('/categories/men')}}">
                                            <i class="fas fa-caret-right pl-1 pr-3"></i>کوله پشتی
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="{{url('/contact-us')}}">تماس با ما</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="{{url('/about-us')}}">درباره ما</a>
                </li>
            </ul>
            <!-- Links -->

            <!-- Links -->
            <ul class="navbar-nav nav-flex-icons ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-facebook-f" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-twitter" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-instagram" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-pinterest" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-telegram" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-whatsapp" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/categories/men')}}">
                        <i class="fab fa-linkedin" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
            <!-- Links -->

        </div>
        <!-- Collapsible content -->

    </nav>

</header>
<!--Main Navigation-->
{!! view_render_event('bagisto.shop.layout.header.category.after') !!}


@push('scripts')


<script type="text/x-template" id="category-nav-template">

    <ul class="nav">
        <category-item
            v-for="(item, index) in items"
            :key="index"
            :url="url"
            :item="item"
            :parent="index">
        </category-item>
    </ul>

</script>

<script>
    Vue.component('category-nav', {

        template: '#category-nav-template',

        props: {
            categories: {
                type: [Array, String, Object],
                required: false,
                default: (function () {
                    return [];
                })
            },

            url: String
        },

        data: function(){
            return {
                items_count:0
            };
        },

        computed: {
            items: function() {
                return JSON.parse(this.categories)
            }
        },
    });
</script>

<script type="text/x-template" id="category-item-template">
    <li>
        <a :href="url+'/categories/'+this.item['translations'][0].slug">
            @{{ name }}&emsp;
            <i class="icon dropdown-right-icon" v-if="haveChildren && item.parent_id != null"></i>
        </a>

        <i :class="[show ? 'icon icon-arrow-down mt-15' : 'icon dropdown-right-icon left mt-15']"
        v-if="haveChildren"  @click="showOrHide"></i>

        <ul v-if="haveChildren && show">
            <category-item
                v-for="(child, index) in item.children"
                :key="index"
                :url="url"
                :item="child">
            </category-item>
        </ul>
    </li>
</script>

<script>
    Vue.component('category-item', {

        template: '#category-item-template',

        props: {
            item:  Object,
            url: String,
        },

        data: function() {
            return {
                items_count:0,
                show: false,
            };
        },

        mounted: function() {
            if(window.innerWidth > 770){
                this.show = true;
            }
        },

        computed: {
            haveChildren: function() {
                return this.item.children.length ? true : false;
            },

            name: function() {
                if (this.item.translations && this.item.translations.length) {
                    this.item.translations.forEach(function(translation) {
                        if (translation.locale == document.documentElement.lang)
                            return translation.name;
                    });
                }

                return this.item.name;
            }
        },

        methods: {
            showOrHide: function() {
                this.show = !this.show;
            }
        }
    });
</script>


@endpush