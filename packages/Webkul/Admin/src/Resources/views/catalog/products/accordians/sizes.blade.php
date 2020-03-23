@inject ('productFlatRepository', 'Webkul\Product\Repositories\ProductFlatRepository')

<?php
$productChannels = $productFlatRepository->findWhere([
    'product_id' => $product->id
])->pluck('channel')->unique()->toArray();
?>

<accordian :title="'سایز ها'" :active="true">
    <div slot="body">
        <div class="control-group" :class="[errors.has('channels[]') ? 'has-error' : '']">
            <label for="channels" class="required">{{ __('admin::app.catalog.products.channel') }}</label>
            <div class="form-check form-check-inline">
{{--                @foreach (app('Webkul\Product\Http\Controllers\ProductSizeController')->index() as $size)--}}

                    <span class="checkbox" style="display: inline-block">
                        <input type="checkbox" id="31" name="sizes[]" value="31">
                        <label for="31" class="checkbox-view"></label>
                        <span for="31">31</span>
                    </span>
                <span class="checkbox" style="display: inline-block">
                        <input type="checkbox" id="32" name="sizes[]" value="32">
                        <label for="32" class="checkbox-view"></label>
                        <span for="32">32</span>
                    </span>
                <span class="checkbox" style="display: inline-block">
                        <input type="checkbox" id="32" name="sizes[]" value="32">
                        <label for="32" class="checkbox-view"></label>
                        <span for="32">32</span>
                    </span>

{{--                @endforeach--}}
            </div>

            <span class="control-error" v-if="errors.has('channels[]')">
                @{{ errors.first('channels[]') }}
            </span>
        </div>
    </div>
</accordian>