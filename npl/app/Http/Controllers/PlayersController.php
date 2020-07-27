<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Player;
use App\Team;
use Session;

class PlayersController extends Controller
{
    public function index(){

    	$players = Player::paginate(8);

        $teams = Team::all();

    	return view('admin/players',['players'=>$players, 'teams'=>$teams]);

    }

    public function addPlayerform(){
        $teams = Team::all();
        return view('admin/newplayer',['teams'=>$teams]);
    }

    public function addPlayer(Request $request){

    	$validatedData = $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'imageuri' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
  
        $imageName = 'images/players/'.strtotime("now").$request->imageuri->extension();  

        if($request->imageuri->move(public_path('images/players'), $imageName)){
            $imageuri = $imageName;
        }

        $player = new Player;

        $player->first_name = isset($request->first_name)?$request->first_name:'';
        $player->last_name 	= isset($request->last_name)?$request->last_name:'';
        $player->imageuri 	= isset($imageuri)?$imageuri:'';
        $player->jerseyno 	= isset($request->jerseyno)?$request->jerseyno:'';
        $player->country = isset($request->country)?$request->country:'';
        $player->team_id = isset($request->team_id)?$request->team_id:'';

        $player->save();
        
        Session::flash('message','New player added successfully'); 
        Session::flash('alert-class','alert-success'); 

        return redirect('/players');
    }

    public function updatePlayerform($id){

    	$players = Player::find($id);

        $teams = Team::all();

    	return view('admin/updateplayer',['players'=>$players, 'teams'=>$teams]);
    
    }

    public function updatePlayer(Request $request){

    	$validatedData = $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'imageuri' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if(!empty($request->imageuri)){
            $imageName = 'images/players/'.strtotime("now").$request->imageuri->extension();
	        if($request->imageuri->move(public_path('images/players'), $imageName)){
	            $imageuri = $imageName;
	        }
        }

        $player = Player::find($request->id);

        $player->first_name = isset($request->first_name)?$request->first_name:'';
        $player->last_name 	= isset($request->last_name)?$request->last_name:'';
        $player->imageuri 	= isset($imageuri)?$imageuri:$player->imageuri;
        $player->jerseyno 	= isset($request->jerseyno)?$request->jerseyno:'';
        $player->country = isset($request->country)?$request->country:'';
        $player->team_id = isset($request->team_id)?$request->team_id:'';

        $player->save();
        
        Session::flash('message','Player updated successfully'); 
        Session::flash('alert-class','alert-success'); 

        return redirect('/players');
    }

    public function deletePlayer($id){

        $player = Player::find($id);
        $player->delete();

        Session::flash('message','Player deleted successfully'); 
        Session::flash('alert-class','alert-danger'); 
        return redirect('/players');
    
    }

    public function PlayerDetails($id){
        $player = Player::find($id);

        return view('admin/playerinfo',['player'=>$player]);
    }
}
