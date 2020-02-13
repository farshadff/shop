<?php

namespace Webkul\Core\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Webkul\Category\Models\CategoryProxy;
use Webkul\Inventory\Models\InventorySourceProxy;
use Webkul\Core\Contracts\Channel as ChannelContract;

class Contact extends Model
{
    protected $fillable = ['name','mobile','email','branch','message'];
}