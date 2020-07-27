@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div>
			<h1>Add New Team</h1>
		</div>
	</div>
	<div class="">
		<form action="{{ route('addteam') }}" method="post" enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> Team Name</label>
					<input type="text" class="form-control" name="team_name" placeholder="Enter Team Name">
					@error('team_name') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> Team Code</label>
					<input type="text" class="form-control" name="team_code" placeholder="Enter Team Code">
					@error('team_code') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> Club State</label>
					<input type="text" class="form-control" name="clube_state" placeholder="Enter Team clube state">
					@error('clube_state') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
				<div class="form-group col-md-6">
					<label for=""><span class="text-danger">*</span> Upload Team Logo</label>
					<input type="file" class="form-control-file" name="team_logo">
					@error('team_logo') <div class="text-danger">{{ $message }}</div> @enderror
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
@endsection