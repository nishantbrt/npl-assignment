<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    public function match()
    {
        return $this->hasMany('App\Match');
    }
}
