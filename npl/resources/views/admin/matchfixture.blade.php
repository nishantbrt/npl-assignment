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
    <form action="{{ route('matches') }}" method="post">
        {{ csrf_field() }}
        <div class="form-row">
            <div class="form-group col-md-6">
                <input type="date" min="{{ $date }}" class="form-control" value="{{ $date }}" name="tournamentStartDate">
            </div>
            <div class="form-group col-md-4">
                <button type="submit" class="btn btn-primary btn-sl">Generate & Save Turnaments</button>
            </div>
            <div class="form-group col-md-2">
              <a href="{{ route('clearmatches') }}" class="btn btn-primary btn-sl float-right" onclick="return confirm('Are you sure?');">Delete Matches</a>
            </div>
        </div>
    </form>
    
@if(isset($matches))
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">Match</th>
                  <th scope="col">Date</th>
                  <th scope="col">Team Names</th>
                  <th scope="col">City</th>
                  <th scope="col">Status</th>
                </tr>
              </thead>
              <tbody>
                @foreach($matches as $matche)
                <tr>
                    <td>{{ $matche->id }}</td>
                    <td>{{ date('l, d M, Y', strtotime($matche->date)) }}</td>
                    <td>Team {{ $matche->firstteam->team_name }} v/s Team {{ $matche->secondteam->team_name }}</td>
                    <td>{{ $matche->stadium_id }}</td>
                    <td>
                      @if($matche->win_team_id == 0 && $matche->status == 0)
                        <a href="{{ route('updatepoint',['id'=>$matche->id]) }}" class="btn btn-primary btn-sm">Update</a>
                      @elseif($matche->win_team_id == 0)
                        50-50
                      @else
                        {{ $matche->firstteam->team_code }} win
                      @endif
                    </td>
                </tr>
                @endforeach
            </tbody>
            </table>
        </div>
    </div>
@endif
</div>
@endsection