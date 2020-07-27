<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\Match;
use App\Point;
use App\Player;
use Session;

class LandingPageController extends Controller
{
    public function index(){

    	$teams = Team::all();

    	return view('landing',['teams' => $teams]);
    }

    public function teamDetail($id){

    	$team = Team::find($id);

    	$players = Player::where('team_id', $team->id)->get();

    	return view('deamdetail',['team' => $team, 'players'=>$players]);
    }

    public function matchLanding(){

    	$matches = Match::paginate(10);

    	return view('matcheslanding',['matches'=>$matches]);
    }

    public function pointLanding(){

    	$points = Point::all();

    	return view('pointlanding',['points'=>$points]);
    }

}
