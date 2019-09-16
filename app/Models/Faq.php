<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    public function category_faq()
    {
        return $this->belongsTo(Voyager::modelClass('CategoryFaq'));
    }
}
