<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Facades\Voyager;
class Product extends Model
{
    public function categories()
    {
        return $this->belongsTo(Voyager::modelClass('Category'));
    }
}
