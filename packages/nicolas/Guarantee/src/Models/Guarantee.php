<?php

namespace nicolas\Guarantee\Models;

use Illuminate\Database\Eloquent\Model;
use Webkul\Product\Models\Product;

class Guarantee extends Model
{
    protected $fillable=['name','guarantee_number','product_id','cellphone','status','review'];
    public function products(){
        return $this->hasOne(Product::class,'id','product_id');
    }
}
