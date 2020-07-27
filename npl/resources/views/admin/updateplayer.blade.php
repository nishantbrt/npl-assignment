@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div>
			<h1>Update Player</h1>
		</div>
	</div>
	<div class="">
		<form action="{{ route('updatePlayer') }}" method="post" enctype="multipart/form-data">
			{{ csrf_field() }}
			<input type="hidden" name="id" value="{{ $players->id }}">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> First Name</label>
					<input type="text" class="form-control" name="first_name" placeholder="Enter First Name" value="{{ $players->first_name }}">
					@error('first_name') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> Last Name</label>
					<input type="text" class="form-control" name="last_name" placeholder="Enter Last Name" value="{{ $players->last_name }}">
					@error('last_name') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="">Team</label>
					<select class="form-control" name="team_id">
				      <option value='0'>Select Team</option>
				      @foreach($teams as $team)
				      	<option value='{{ $team->id }}' {{ $players->team_id==$team->id ? 'selected' :''}}>{{ $team->team_name }} ({{ $team->team_code }})</option>
				      @endforeach
				    </select>
				</div>
				<div class="form-group col-md-6">
					<label for="">Jersey Number</label>
					<input type="text" class="form-control" name="jerseyno" placeholder="Enter Jersey Number" value="{{ $players->jerseyno }}">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="">Country</label>
					<input type="text" class="form-control" name="country" placeholder="Enter Plyaer Country" value="{{ $players->country }}">
				</div>
				<div class="form-group col-md-6">
					<label for="">Upload Image</label>
					<input type="file" class="form-control-file" name="imageuri" value="{{ $players->imageuri }}">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
@endsection