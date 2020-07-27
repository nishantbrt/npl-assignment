<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\Player;
use Session;

class TeamsController extends Controller
{
    public function index(){
    	$teams = Team::paginate(8);
    	return view('admin/dashboard',['teams'=>$teams]);

    }

    public function addTeam(Request $request){

    	$validatedData = $request->validate([
            'team_name' => 'required',
            'team_code' => 'required',
            'clube_state'=>'required',
            'team_logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
  
        $imageName = 'images/'.$request->team_name.'_logo.'.$request->team_logo->extension();  

        if($request->team_logo->move(public_path('images'), $imageName)){
            $team_logo = $imageName;
        }

        $team = new Team;

        $team->team_name 	= isset($request->team_name)?$request->team_name:'';
        $team->team_code 	= isset($request->team_code)?$request->team_code:'';
        $team->team_logo 	= isset($team_logo)?$team_logo:'';
        $team->clube_state 	= isset($request->clube_state)?$request->clube_state:'';
        $team->team_captain = isset($request->team_captain)?$request->team_captain:'';

        $team->save();
        
        Session::flash('message','New team added successfully'); 
        Session::flash('alert-class','alert-success'); 

        return redirect('/dashboard');

    }

    public function updateTeamform($id){

    	$teams = Team::find($id);

    	return view('admin/updateteam',['teams'=>$teams]);
    
    }

    public function updateTeam(Request $request){

    	$validatedData = $request->validate([
            'team_name' => 'required',
            'team_code' => 'required',
            'clube_state'=>'required',
            'team_logo' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if(!empty($request->team_logo)){
            $imageName = 'images/'.$request->team_name.'_logo.'.$request->team_logo->extension();  
            if($request->team_logo->move(public_path('images'), $imageName)){
                $team_logo = $imageName;
            }
        }

        $team = Team::find($request->id);

        $team->team_name 	= isset($request->team_name)?$request->team_name:'';
        $team->team_code 	= isset($request->team_code)?$request->team_code:'';
        $team->team_logo 	= isset($team_logo)?$team_logo:$team->team_logo;
        $team->clube_state 	= isset($request->clube_state)?$request->clube_state:'';
        $team->team_captain = isset($request->team_captain)?$request->team_captain:'';

        $team->save();

        Session::flash('message','Team updated successfully'); 
        Session::flash('alert-class','alert-success'); 
        
        return redirect('/dashboard');

    }

    public function deleteTeam($id){

        $team = Team::find($id);
        if($team->delete()){
            $players = Player::where('team_id', $id)->get();
            foreach ($players as $player) {
                $playerup = Player::find($player->id);
                $playerup->update(['team_id' => 0]);
            }
        }

        Session::flash('message','Team deleted successfully'); 
        Session::flash('alert-class','alert-danger'); 
        return redirect('/dashboard');
    
    }

    public function teamDetails($id){
        $team = Team::find($id);

        $players = Player::where('team_id', $team->id)->get();

        return view('admin/teaminfo',['team'=>$team, 'players'=>$players]);
    }

    public function getTeaName($id){
        $team = Team::find($id);
        return $team->team_mane;
    }
}
