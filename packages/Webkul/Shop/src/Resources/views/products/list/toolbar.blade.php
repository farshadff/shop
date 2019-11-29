@inject ('toolbarHelper', 'Webkul\Product\Helpers\Toolbar')

{!! view_render_event('bagisto.shop.products.list.toolbar.before') !!}

<div class="top-toolbar mb-35">
    <div class="row">
        <div class="col-lg-6">
            <div class="pager">
                <div class="row">
                <div class="view-mode d-inline-block">
                    @if ($toolbarHelper->isModeActive('grid'))
                        <span class="grid-view">
                    <i class="icon grid-view-icon"></i>
                </span>
                    @else
                        <a href="{{ $toolbarHelper->getModeUrl('grid') }}" class="grid-view">
                            <i class="icon grid-view-icon"></i>
                        </a>
                    @endif

                    @if ($toolbarHelper->isModeActive('list'))
                        <span class="list-view d-inline-block">
                    <i class="icon list-view-icon"></i>
                </span>
                    @else
                        <a href="{{ $toolbarHelper->getModeUrl('list') }}" class="list-view">
                            <i class="icon list-view-icon"></i>
                        </a>
                    @endif
                </div>

                <div class="sorter d-inline-block">
                    <label>{{ __('shop::app.products.sort-by') }}</label>

                    <select onchange="window.location.href = this.value">

                        @foreach ($toolbarHelper->getAvailableOrders() as $key => $order)

                            <option
                                value="{{ $toolbarHelper->getOrderUrl($key) }}" {{ $toolbarHelper->isOrderCurrent($key) ? 'selected' : '' }}>
                                {{ __('shop::app.products.' . $order) }}
                            </option>

                        @endforeach

                    </select>
                </div>

                <div class="limiter d-inline-block">
                    <label>{{ __('shop::app.products.show') }}</label>

                    <select onchange="window.location.href = this.value">

                        @foreach ($toolbarHelper->getAvailableLimits() as $limit)

                            <option
                                value="{{ $toolbarHelper->getLimitUrl($limit) }}" {{ $toolbarHelper->isLimitCurrent($limit) ? 'selected' : '' }}>
                                {{ $limit }}
                            </option>

                        @endforeach

                    </select>
                </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="page-info">
        <span>
            {{ __('shop::app.products.pager-info', ['showing' => $products->firstItem() . '-' . $products->lastItem(), 'total' => $products->total()]) }}
        </span>

                <span class="sort-filter">
            <i class="icon sort-icon" id="sort"></i>
            <i class="icon filter-icon" id="filter"></i>
        </span>
            </div>
        </div>

    </div>
</div>

{!! view_render_event('bagisto.shop.products.list.toolbar.after') !!}


<div class="responsive-layred-filter mb-20">
    <layered-navigation></layered-navigation>
</div>