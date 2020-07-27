@extends('layouts.master')

@section('content')
<div class="container">
    <div class="row">
      @if(isset($teams))
        @foreach($teams as $team)
          <div class="col-md-3">
            <div class="team-thumb" style="min-height: 250px;margin-bottom: 15px;border: 1px solid #343a40;border-radius: 15px;">
              <a href="{{ route('teamdetail',['id'=>$team->id]) }}" class="">
              <img src="{{ url($team->team_logo) }}" class="rounded mx-auto d-block" />
              <h3 class="font-weight-bolder text-center">{{ $team->team_name }}</h3>
              <h3 class="font-weight-bolder text-center">({{ $team->team_code }})</h3></a>
            </div>
          </div>
        @endforeach
      @endif
    </div>
  </div>
@endsection
