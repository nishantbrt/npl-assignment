@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">
    @if(Session::has('message'))
      <div class="alert {{ Session::get('alert-class', 'alert-info') }} alert-dismissible fade show w-100" role="alert">
        {{Session::get('message') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    @endif
  </div>
    <div class="row">
        <div class="col-md-6">
            <h1>Players</h1>
        </div>
        <div class="col-md-6">
            <a href="{{ route('newplayer') }}" class="btn btn-primary btn-sm float-right">Add New Player</a>
        </div>
    </div>
    @if(!empty($players))
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
                      <th scope="col">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($players as $player)
                        <tr>
                          <th scope="row"><img src="{{ url($player->imageuri) }}" height="50px" width="50px"></th>
                          <td>{{ $player->first_name.' '.$player->last_name }}</td>
                          <td>{{ $player->team->team_name }}</td>
                          <td>{{ $player->jerseyno }}</td>
                          <td>{{ $player->country }}</td>
                          <td>
                            <a href="/deleteplayer/{{ $player->id }}" class="btn btn-danger btn-sm float-right ml-1" onclick="return confirm('Are you sure?');">Delete</a><a href="/updateplayerform/{{ $player->id }}" class="btn btn-success btn-sm float-right ml-1">Edit</a>
                          </td>
                        </tr>
                    @endforeach
                  </tbody>
                </table>
                <div class="float-right"> 
                  {{ $players->render() }}
                </div>
            </div>
        </div>
    @endif
</div>
@endsection
