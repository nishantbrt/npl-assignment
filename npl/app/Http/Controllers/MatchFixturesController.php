<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\Match;
use App\Point;
use Session;


class MatchFixturesController extends Controller
{
    public $finished;
    public $error;
    public $matchdaysCreated;
    public $rawMatchesCreated;
    public $matchdayCount;
    private $matchPointer;
    private $matchdayPointer;
    private $teams;
    private $teams1;
    private $teams2;
    public $matches;
    public $freeTicket;
    public $freeTicketIdentifer;

    public function __construct($passedTeams = null) {
        $this->teams = $passedTeams;
        $this->finished = false;
        $this->error = '';
        $this->matchdaysCreated = false;
        $this->rawMatchesCreated = false;
        $this->freeTicket = true;
        $this->freeTicketIdentifer = 'Fre';
        $this->matchdayCount = 0;
        $this->matchdayPointer = 0;
        $this->matchPointer = 0;
        $this->matches = array();
    }

    public function createMatches() {
        if (!$this->validTeamArray())
            return false;

        $this->matches = array();

        if (count($this->teams) % 2) {
            $this->teams1 = array_slice($this->teams, 0, ceil(count($this->teams)/2));
            $this->teams2 = array_slice($this->teams, ceil(count($this->teams)/2));
            
        }
        else {
            $this->teams1 = array_slice($this->teams, 0, count($this->teams)/2);
            $this->teams2 = array_slice($this->teams, count($this->teams)/2);
        }

        if (!$this->matchdayCount) {
            for ($i = 2; $i < (count($this->teams1) * 2); $i++){
                $this->saveMatchday();
                $this->rotate();
            }
            $this->saveMatchday();
        }
        else {
            if ($this->matchdayCount < 0) {
                 $this->error = 'No negative matchDay count allowed';
                 $this->resetClassState();
                 return true;
            }
            shuffle($this->teams1);
            shuffle($this->teams2);

            if (count($this->teams) >= $this->matchdayCount) {
                for($i = 1; $i < $this->matchdayCount; $i++) {
                    $this->saveMatchday();
                    $this->rotate();
                }
                $this->saveMatchday();
            }
            else {
                for ($i = 2; $i < (count($this->teams1) * 2); $i++){
                    $this->saveMatchday();
                    $this->rotate();
                }
                $this->saveMatchday();
                $diff = $this->matchdayCount - count($this->teams);
                for ($i = 0; $i < $diff; $i++) {
                    $this->matches[] = array();
                }
            }
        }

        $this->finished = true;
        $this->rawMatchesCreated = false;
        $this->matchdaysCreated = true;
        $this->clearPointer();

        return $this->matches;
    }

    private function saveMatchday() {
        for ($i = 0; $i < count($this->teams2); $i++) {
            if ($this->freeTicket || ($this->teams1[$i] != $this->freeTicketIdentifer &&
                                       $this->teams2[$i] != $this->freeTicketIdentifer))
                $matches_tmp[] = array($this->teams1[$i], $this->teams2[$i]);
        }
        $this->matches[] = $matches_tmp;
        return true;
    }

    private function rotate() {
        $temp = $this->teams1[1];
        for($i = 1; $i < (count($this->teams1) - 1); $i++) {
            $this->teams1[$i] = $this->teams1[$i + 1];
        }
        $this->teams1[count($this->teams1) - 1] = end($this->teams2);
        for($i = (count($this->teams2) - 1); $i > 0; $i--) {
            $this->teams2[$i] = $this->teams2[$i - 1];
        }
        $this->teams2[0] = $temp;
        return true;
    }

    private function validTeamArray() {
         if (!is_array($this->teams) || count($this->teams) < 2) {
            $this->error = 'Not enough teams in array => shape passed';
            $this->resetClassState();
            return false;
        }
        return true;
    }

    private function resetClassState() {
        $this->finished = false;
        $this->rawMatchesCreated = false;
        $this->matchdaysCreated = false;
        $this->matches = array();
        $this->clearPointer();
        $this->matchdayCount = 0;
        return true;
    }

    private function clearPointer() {
        $this->matchdayPointer = 0;
        $this->matchPointer = 0;
        return true;
    }

    public function setDates($schedule, $startingDate) {

        $date = $startingDate;
        $schedule[0]['date'] = $date;

        $weekendCount = 0;
        for ($i=1; $i < count($schedule); $i++) { 

            (!$this->isWeekend($date)) ? $date = date('Y-m-d', strtotime('+1 day', strtotime($date))) : $weekendCount++ ;

            if($weekendCount == 2) {
                $date = date('Y-m-d', strtotime('+1 day', strtotime($date)));
                $weekendCount =  0;
            }
            $schedule[$i]['date'] = $date;
        }

        return $schedule;
        
    }

    private function isWeekend($date) {
        return (date('N', strtotime($date)) >= 6);
    }

    public function index(){

        $matches = Match::all();

        return view('admin/matchfixture',['matches'=>$matches,'date'=>date('Y-m-d')]);
    }
    public function createMaches(Request $request){

        $nplteams = Team::all('id','clube_state');

        $stadiums = array();
        foreach ($nplteams as $nplteam) {
            $teams[] = $nplteam->id;
            $stadiums += array($nplteam->id => $nplteam->clube_state);
        }

        $this->teams = $teams;
        $this->createMatches();

        if ($this->finished) {
            $round = $this->matches;    
        }
        $matches_home = array();
        $matches_away = array();

        foreach ($round as $key => $value) {
            foreach ($value as $k ) {
                $matches_home[] = array(
                    'home_team' => $k[0],
                    'away_team' => $k[1],
                    'stadium'   => $stadiums[$k[0]]
                    );
            }
        }

        foreach ($round as $key => $value) {
            foreach ($value as $k ) {
                $matches_away[] = array(
                    'home_team' => $k[0],
                    'away_team' => $k[1],
                    'stadium'   => $stadiums[$k[1]]
                    );
            }
        }

        $matches = array_merge($matches_home, $matches_away);

        $date = isset($request->tournamentStartDate)? $request->tournamentStartDate :date('Y-m-d');

        $matches = $this->setDates($matches, $date);

        
        $trunkmaches = Match::truncate();
        $trunkpoint = Point::truncate();

        foreach($matches as $key){
            $savefixture = new Match;
            $savefixture->first_team_id = $key['home_team'];
            $savefixture->second_team_id = $key['away_team'];
            $savefixture->date = (string)$key['date'];
            $savefixture->stadium_id = $key['stadium'];
            $savefixture->win_team_id = 0;
            $savefixture->time = '';
            $savefixture->status = 0;
            $savefixture->save();
        }

        $point_teams = Team::all();
        $noofmatches = count($point_teams) - 1;
        foreach ($point_teams as $point_team) {
            $point = new Point;
            $point->team_id = $point_team->id;
            $point->no_of_matches = $noofmatches + $noofmatches;
            $point->win = 0;
            $point->loss = 0;
            $point->other = 0;
            $point->points = 0;
            $point->avg = 0;
            $point->save();
        }

        Session::flash('message','Matches save successfully'); 
        Session::flash('alert-class','alert-success'); 
        
        return redirect('matchfixture');
    }

    public function pointChart(){
        $points = Point::all();

        return view('admin/pointchart',['points'=>$points]);
    }

    public function clearMatches(){

        $trunkmaches = Match::truncate();
        $trunkpoint = Point::truncate();

        Session::flash('message','Matches deleted successfully'); 
        Session::flash('alert-class','alert-success'); 
        
        return redirect('matchfixture');
    }

    public function updatePoint($id){
        $match = Match::find($id);

        return view('admin/updatepoint',['match'=>$match]);
    }

    public function updatePoints(Request $request){

        $match = Match::find($request->id);
            if($request->status==1){
                $match->win_team_id = $match->first_team_id;
                $this->pointCalc($match->first_team_id ,$match->second_team_id);
            }elseif($request->status==2){
                $match->win_team_id = $match->second_team_id;
                $this->pointCalc($match->second_team_id ,$match->first_team_id);
            }else{
                $match->status = 1;

                $team1 = Point::find($match->first_team_id);
                $team1->other = $team1->other + 1;
                $team1->points = $team1->points + 1;
                $team1->save();

                $team2 = Point::find($match->second_team_id);
                $team2->other = $team2->other + 1;
                $team2->points = $team2->points + 1;
                $team2->save();
            }

        $match->save();


        return redirect('matchfixture');
    }

    public function pointCalc($id1 ,$id2){
        $teamplus = Point::find($id1);
        $teamplus->win = $teamplus->win +1;
        $teamplus->points = ($teamplus->win * 2 + $teamplus->other);
        $teamplus->save();

        $teamminus = Point::find($id2);
        $teamminus->loss = $teamminus->loss+1;
        $teamminus->save();
    }
}
