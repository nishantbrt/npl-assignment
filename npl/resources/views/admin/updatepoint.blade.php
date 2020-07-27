@extends('layouts.app')

@section('content')
<div class="container">
    	<form action="{{ route('updatepoints') }}" method="post">
        {{ csrf_field() }}
        <input type="hidden" name="id" value="{{ $match->id }}">
        <div class="form-row">
            <div class="form-group col-md-6">
                <select class="form-control" name="status">
                  <option>Match status</option>
                  <option value="1">{{ $match->firstteam->team_code }} win</option>
                  <option value="2">{{ $match->secondteam->team_code }} win</option>
                  <option value="3">50-50</option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <button type="submit" class="btn btn-primary btn-sl">Save</button>
            </div>
        </div>
    </form>
</div>
@endsection