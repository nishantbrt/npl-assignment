@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
    	<h1><img src="{{ url($team->team_logo) }}" height="100px" width="100px" class="mr-3 border border-info" />{{ $team->team_name }} ({{ $team->team_code }}) : {{ $team->clube_state }}</h1>
    </div>
    <br>
    @if(!empty($players) && count($players) > 0)
    <div class="row">
    	<h3>Players List of {{ $team->team_name }} ({{ $team->team_code }})</h3>
    </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Thumb</th>
                      <th scope="col">Name</th>
                      <th scope="col">Team</th>
                      <th scope="col">Jersey No</th>
                      <th scope="col">Country</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($players as $player)
                        <tr>
                          <th scope="row"><img src="{{ url($player->imageuri) }}" height="50px" width="50px"></th>
                          <td>{{ $player->first_name.' '.$player->last_name }}</td>
                          <td>{{ $team->team_name }}</td>
                          <td>{{ $player->jerseyno }}</td>
                          <td>{{ $player->country }}</td>
                        </tr>
                    @endforeach
                  </tbody>
                </table>
            </div>
        </div>
    @endif
</div>
@endsection
