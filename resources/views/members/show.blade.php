@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('members.index') }}">Members</a></li>
        <li class="breadcrumb-item active" aria-current="page">View</li>
    </ol>

        @if(session('message'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('message') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control" id="id" value="{{ $member->id }}" placeholder="" disabled>
                    <label for="id">MEMBER ID</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="first_name" value="{{ $member->first_name }}" placeholder="" disabled>
                    <label for="first_name">FIRST NAME</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="last_name" value="{{ $member->last_name }}" placeholder="" disabled>
                    <label for="last_name">LAST NAME</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select" id="gender" disabled>
                        <option selected>{{ ucfirst($member->gender) }}</option>
                    </select>
                    <label for="gender">GENDER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="email" value="{{ $member->email }}" placeholder="" disabled>
                    <label for="email">EMAIL</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number"  value="{{ $member->contact }}" class="form-control" id="contact" placeholder="" disabled>
                    <label for="contact">CONTACT NUMBER</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control" id="joined_date" value="{{ $member->joined_date }}" placeholder="" disabled>
                    <label for="joined_date">JOINED DATE</label>
                </div>
            </div>
            <div class="col-md-8">
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="" id="member_address" style="height: 100px" disabled>{{ $member->member_address }}</textarea>
                    <label for="member_address">ADDRESS</label>
                </div>
            </div>
        </div>

        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="active_status_id" @if($member->active_status_id == '1') {{ 'checked' }}@endif disabled>
            <label class="form-check-label" for="active_status_id">
                @if($member->active_status_id == '1') {{ 'Activated' }}@else {{ 'Deactivated' }} @endif
            </label>
        </div>

        <div class="text-end">
            <a href="{{ route('members.index') }}" class="btn btn-outline-secondary">Back to Lists</a>
            <a href="{{ route('members.edit',$member->id) }}" class="btn btn-outline-primary">Edit</a>
        </div>
           
    </div>
@endsection