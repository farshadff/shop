<?php

namespace Webkul\Product\Helpers;

use phpDocumentor\Reflection\Types\Integer;
use Webkul\Attribute\Repositories\AttributeOptionRepository as AttributeOption;
use Illuminate\Support\Facades\Storage;
use Webkul\Product\Models\Product;

class ProductSize extends AbstractProduct
{
    public function getProductsize($product){
        $data = \Webkul\Product\Models\ProductSize::where('product_id',$product->product->id)->get();
        return $data;
    }
}