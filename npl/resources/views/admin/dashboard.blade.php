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
            <h1>Teams</h1>
        </div>
        <div class="col-md-6">
            <a href="{{ route('newteam') }}" class="btn btn-primary btn-sl float-right">Add New Team</a>
        </div>
    </div>
    @if(!empty($teams))
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Logo</th>
                      <th scope="col">Name</th>
                      <th scope="col">Code</th>
                      <th scope="col">Home</th>
                      <th scope="col">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($teams as $team)
                        <tr>
                          <th scope="row"><img src="{{ url($team->team_logo) }}" height="50px" width="50px" /></th>
                          <td>{{ $team->team_name }}</td>
                          <td>{{ $team->team_code }}</td>
                          <td>{{ $team->clube_state }}</td>
                          <td>
                            <a href="/deleteteam/{{ $team->id }}" class="btn btn-danger btn-sm float-right ml-1" onclick="return confirm('Are you sure?');">Delete</a> <a href="/updateteamform/{{ $team->id }}" class="btn btn-success btn-sm float-right ml-1">Edit</a>
                            <a href="/teamdetails/{{ $team->id }}" class="btn btn-info btn-sm float-right ml-1" >More</a>
                          </td>
                        </tr>
                    @endforeach
                  </tbody>
                </table>
                <div class="float-right"> 
                  {{ $teams->render() }}
                </div>
            </div>
        </div>
    @endif
</div>
@endsection
