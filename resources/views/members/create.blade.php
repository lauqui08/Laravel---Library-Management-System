@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('members.index') }}">Members</a></li>
        <li class="breadcrumb-item active" aria-current="page">Add</li>
    </ol>
    </nav>

        @if(session('message') && !$errors->any())
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
        
        <form action="{{ route('members.store') }}" method="POST" class="form-control shadow">
            @csrf
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1" class="form-control fw-bolder text-info" id="id" name="id" value="{{ $errors->any() ? old('id') : rand(1,2147483647) }}" placeholder="" required>
                    <label for="id">MEMBER ID @error('id')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" id="first_name" name="first_name" value="{{ $errors->any() ? old('first_name') : '' }}" placeholder="" required>
                    <label for="first_name">FIRST NAME</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" id="last_name" name="last_name" value="{{ $errors->any() ? old('last_name') : '' }}" placeholder="" required>
                    <label for="last_name">LAST NAME</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select fw-bolder text-info" id="gender" name="gender" required>
                        <option value="{{ old('gender') ? old('gender') : '' }}">{{ old('gender') ? ucfirst(old('gender')) : ucfirst('Open this select menu') }}</option>
                        
                        @if(old('gender'))
                        <option value="{{ old('gender') == 'male' ? 'female' : 'male' }}">{{ old('gender') == 'male' ? ucfirst('female') : ucfirst('male') }}</option>
                        @else
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        @endif

                    </select>
                    <label for="gender">GENDER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control fw-bolder text-info" id="email" name="email" value="{{ $errors->any() ? old('email') : '' }}" placeholder="" required>
                    <label for="email">EMAIL @error('email')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1"  value="{{ $errors->any() ? old('contact') : '' }}" class="form-control fw-bolder text-info" id="contact" name="contact" placeholder="" required>
                    <label for="contact">CONTACT NUMBER @error('contact')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control fw-bolder text-info" id="joined_date" name="joined_date" value="{{ $errors->any() ? old('joined_date') : '' }}" placeholder="" required>
                    <label for="joined_date">JOINED DATE</label>
                </div>
            </div>
            <div class="col-md-8">
                <div class="form-floating mb-3">
                    <textarea class="form-control fw-bolder text-info" placeholder="" name="member_address" id="member_address" style="height: 100px">{{ $errors->any() ? old('member_address') : '' }}</textarea>
                    <label for="member_address">ADDRESS</label>
                </div>
            </div>
        </div>

        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="active_status_id" name="active_status_id" >
            <label class="form-check-label fw-bolder text-info" for="active_status_id">
                Activate Account?
            </label>
        </div>

        <div class="text-end">
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </div>
           
        </form>
    </div>
@endsection