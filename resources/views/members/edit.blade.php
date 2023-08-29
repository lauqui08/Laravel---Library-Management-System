@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('members.index') }}">Members</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit</li>
    </ol>
        <form action="{{ route('members.update',$member->id) }}" method="POST" class="form-control">
            @csrf
            @method('PUT')
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1" class="form-control" id="id" name="id" value="{{ $member->id }}" placeholder="" required>
                    <label for="id">MEMBER ID</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $member->first_name }}" placeholder="" required>
                    <label for="first_name">FIRST NAME</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $member->last_name }}" placeholder="" required>
                    <label for="last_name">LAST NAME</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select" id="gender" name="gender">
                        <option value="{{ $member->gender }}">{{ ucfirst($member->gender) }}</option>
                        <option value="{{ $member->gender == 'male' ? 'female':'male' }}">{{ $member->gender == 'ale' ? 'Female':'Male' }}</option>
                    </select>
                    <label for="gender">GENDER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="email" name="email" value="{{ $member->email }}" placeholder="" required>
                    <label for="email">EMAIL </label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1"  value="{{ $member->contact }}" class="form-control" id="contact" name="contact" placeholder="" required>
                    <label for="contact">CONTACT NUMBER</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control" id="joined_date" name="joined_date" value="{{ $member->joined_date }}" placeholder="" required>
                    <label for="joined_date">JOINED DATE</label>
                </div>
            </div>
            <div class="col-md-8">
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="" name="member_address" id="member_address" style="height: 100px">{{ $member->member_address }}</textarea>
                    <label for="member_address">ADDRESS</label>
                </div>
            </div>
        </div>

        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="active_status_id" name="active_status_id" @if($member->active_status_id == '1') {{ 'checked' }} @endif>
            <label class="form-check-label" for="active_status_id">
                Activate Account?
            </label>
        </div>

        <div class="text-end">
            <a href="{{ route('members.show',$member->id) }}" class="btn btn-outline-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
           
        </form>
    </div>
@endsection