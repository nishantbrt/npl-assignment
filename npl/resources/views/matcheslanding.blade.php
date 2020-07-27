@extends('layouts.master')

@section('content')
<div class="container">
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
            <div class="float-right"> 
              {{ $matches->render() }}
            </div>
        </div>
    </div>
@endif
</div>
@endsection