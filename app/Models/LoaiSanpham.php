<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;

class LoaiSanpham extends Model
{
    use Translatable;

    protected $translatable = ['slug', 'name'];

    protected $table = 'loai_sanphams';

    protected $fillable = ['slug', 'name'];

    public function sanphams() 
    {
        return $this->hasMany(Voyager::modelClass('Sanpham'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
}
