<?php

namespace App\Models;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class CategoryFaq extends Model
{
    use Translatable;

    protected $translatable = ['slug', 'name'];

    protected $table = 'category_faq';

    protected $fillable = ['slug', 'name'];

    public function faqs() 
    {
        return $this->hasMany(Voyager::modelClass('Faq'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
}
