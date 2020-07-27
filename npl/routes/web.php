<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'LandingPageController@index')->name('landingpage');
Route::get('/teamdetail/{id}', 'LandingPageController@teamDetail')->name('teamdetail');
Route::get('/matchlanding', 'LandingPageController@matchLanding')->name('matchlanding');
Route::get('/pointlanding', 'LandingPageController@pointLanding')->name('pointlanding');


Auth::routes();

Route::group(['middleware' => 'auth'], function () {

	//teams urls
	Route::get('/dashboard','TeamsController@index')->name('dashboard');
	Route::view('/newteam','admin/newteam')->name('newteam');
	Route::post('/addteam','TeamsController@addTeam')->name('addteam');
	Route::get('/updateteamform/{id}','TeamsController@updateTeamform')->name('updateteamform');
	Route::post('/updateteam','TeamsController@updateTeam')->name('updateTeam');
	Route::get('/deleteteam/{id}','TeamsController@deleteTeam')->name('deleteTeam');
	Route::get('/teamdetails/{id}','TeamsController@teamDetails')->name('teamdetails');

	//players urls
	Route::get('/players','PlayersController@index')->name('players');
	Route::get('/newplayer','PlayersController@addPlayerform')->name('newplayer');
	Route::post('/addplayer','PlayersController@addPlayer')->name('addplayer');
	Route::get('/updateplayerform/{id}','PlayersController@updatePlayerform')->name('updateplayerform');
	Route::post('/updateplayer','PlayersController@updatePlayer')->name('updatePlayer');
	Route::get('/deleteplayer/{id}','PlayersController@deletePlayer')->name('deletePlayer');
	Route::get('/playerdetails/{id}','PlayersController@PlayerDetails')->name('playerdetails');

	//matchfixture urls
	Route::get('/matchfixture','MatchFixturesController@index')->name('matchfixture');
	Route::post('/matches','MatchFixturesController@createMaches')->name('matches');
	Route::get('/clearmatches','MatchFixturesController@clearMatches')->name('clearmatches');
	Route::post('/updatepoints','MatchFixturesController@updatePoints')->name('updatepoints');
	Route::get('/updatepoint/{id}','MatchFixturesController@updatePoint')->name('updatepoint');

	//point chart
	Route::get('/pointchart','MatchFixturesController@pointChart')->name('pointchart');

});

Route::get('/home', 'HomeController@index')->name('home');
