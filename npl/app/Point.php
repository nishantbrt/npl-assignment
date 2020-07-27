<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Point extends Model
{
	protected $fillable = ['win','loss', 'other', 'points'];

    public function team()
    {
        return $this->belongsTo('App\Team');
    }
}
