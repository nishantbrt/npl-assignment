@extends('layouts.master')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1>Points Chart</h1>
        </div>
    </div>
    @if(!empty($points))
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Team Name</th>
                      <th scope="col">Matches</th>
                      <th scope="col">Win</th>
                      <th scope="col">Loss</th>
                      <th scope="col">Other</th>
                      <th scope="col">Points</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($points as $point)
                        <tr>
                          <th scope="row">{{ $point->team->team_name }} ({{ $point->team->team_code }})</th>
                          <td>{{ $point->no_of_matches }}</td>
                          <td>{{ $point->win }}</td>
                          <td>{{ $point->loss }}</td>
                          <td>{{ $point->other }}</td>
                          <td>{{ $point->points }}</td>
                        </tr>
                    @endforeach
                  </tbody>
                </table>
            </div>
        </div>
    @endif
</div>
@endsection