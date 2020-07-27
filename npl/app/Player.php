<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    protected $fillable = ['team_id'];

    public function team()
    {
        return $this->belongsTo('App\Team');
    }
}
