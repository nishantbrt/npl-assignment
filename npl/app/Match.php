<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Match extends Model
{
    
	protected $fillable = ['win_team_id','status'];

    public function firstteam()
    {
        return $this->belongsTo('App\Team', 'first_team_id');
    }
    public function secondteam()
    {
        return $this->belongsTo('App\Team', 'second_team_id');
    }


}
