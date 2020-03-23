<?php

namespace Webkul\Product\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Event;
use Webkul\Product\Http\Requests\ProductForm;
use Webkul\Product\Models\ProductSize;
use Webkul\Product\Repositories\ProductRepository as Product;
use Webkul\Product\Repositories\ProductAttributeValueRepository as ProductAttributeValue;
use Webkul\Attribute\Repositories\AttributeFamilyRepository as AttributeFamily;
use Webkul\Category\Repositories\CategoryRepository as Category;
use Webkul\Inventory\Repositories\InventorySourceRepository as InventorySource;
use Illuminate\Support\Facades\Storage;

/**
 * Product controller
 *
 * @author    Jitendra Singh <jitendra@webkul.com>
 * @copyright 2018 Webkul Software Pvt Ltd (http://www.webkul.com)
 */
class ProductSizeController extends Controller
{
        public function index(){
            $data = ProductSize::get();
            return $data;
        }
}