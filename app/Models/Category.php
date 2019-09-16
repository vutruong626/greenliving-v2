<?php

namespace App\Models;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use Translatable;

    protected $translatable = ['slug', 'name','parent_id'];

    protected $table = 'categories';

    protected $fillable = ['slug', 'name'];

    // public function posts() 
    // {
    //     return $this->hasMany(Voyager::modelClass('Post'))
    //         ->published()
    //         ->orderBy('created_at', 'DESC');
    // }

    // public function parentId()
    // {
    //     return $this->belongsTo(self::class);
    // }
    public function products() 
    {
        return $this->hasMany(Voyager::modelClass('Product'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }
}
