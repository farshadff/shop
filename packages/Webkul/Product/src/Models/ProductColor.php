<?php

namespace Webkul\Product\Models;

use Illuminate\Database\Eloquent\Model;
use Webkul\Attribute\Models\AttributeFamilyProxy;
use Webkul\Category\Models\CategoryProxy;
use Webkul\Attribute\Models\AttributeProxy;
use Webkul\Inventory\Models\InventorySourceProxy;
use Webkul\Product\Contracts\Product as ProductContract;

class ProductColor extends Model
{
    protected $fillable = ['product_id','color'];
    public function products() {
        return $this->belongsTo(Product::class);
    }
    public function images(){
        return $this->hasMany(ProductImage::class);
    }
}