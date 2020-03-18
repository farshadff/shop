<?php

namespace Webkul\Product\Helpers;

use phpDocumentor\Reflection\Types\Integer;
use Webkul\Attribute\Repositories\AttributeOptionRepository as AttributeOption;
use Illuminate\Support\Facades\Storage;
use Webkul\Product\Models\Product;

class ProductImage extends AbstractProduct
{
    /**
     * Retrieve collection of gallery images
     *
     * @param Product $product
     * @return array
     */
    public function getGalleryImages($product, $color_id = null)
    {
        if (!$product)
            return [];
        $images = [];
        foreach ($product->images as $image) {
            if (!Storage::has($image->path))
                continue;
            if ($image->product_color_id === $color_id) {
                $images[] = [
                    'small_image_url' => url('cache/small/' . $image->path),
                    'medium_image_url' => url('cache/medium/' . $image->path),
                    'large_image_url' => url('cache/large/' . $image->path),
                    'original_image_url' => url('cache/original/' . $image->path),
                ];
            }
        }
        if (!$product->parent_id && !count($images)) {
            if ($image->product_color_id === $color_id) {
                $images[] = [
                    'small_image_url' => asset('vendor/webkul/ui/assets/images/product/small-product-placeholder.png'),
                    'medium_image_url' => asset('vendor/webkul/ui/assets/images/product/meduim-product-placeholder.png'),
                    'large_image_url' => asset('vendor/webkul/ui/assets/images/product/large-product-placeholder.png'),
                    'original_image_url' => asset('vendor/webkul/ui/assets/images/product/large-product-placeholder.png')
                ];
            }
        }

        return $images;
    }

    /**
     * Get product's base image
     *
     * @param Product $product
     * @return array
     */
    public function getProductBaseImage($product)
    {
        $images = $product ? $product->images : null;

        if ($images && $images->count()) {
            $image = [
                'small_image_url' => url('cache/small/' . $images[0]->path),
                'medium_image_url' => url('cache/medium/' . $images[0]->path),
                'large_image_url' => url('cache/large/' . $images[0]->path),
                'original_image_url' => url('cache/original/' . $images[0]->path),
            ];
        } else {
            $image = [
                'small_image_url' => asset('vendor/webkul/ui/assets/images/product/small-product-placeholder.png'),
                'medium_image_url' => asset('vendor/webkul/ui/assets/images/product/meduim-product-placeholder.png'),
                'large_image_url' => asset('vendor/webkul/ui/assets/images/product/large-product-placeholder.png'),
                'original_image_url' => asset('vendor/webkul/ui/assets/images/product/large-product-placeholder.png'),
            ];
        }

        return $image;
    }

    /**
     * Get product's base image
     *
     * @param Product $product
     * @return array
     */
    public function getProductImageColor($product)
    {

        if (!$product)
            return [];
        $images = [];

        $relation =Product::where('id',$product->product->id)->with(array('images' => function($query) {
            $query->groupBy('product_color_id');
        }))->first();
        foreach ($relation->images as $image) {
            if (!Storage::has($image->path))
                continue;
            $images[] = [
                'small_image_url' => url('cache/small/' . $image->path),
                 'color_id' => $image->product_color_id,
            ];
        }
        return $images;
    }
}