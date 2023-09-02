@extends('layouts.app')

@section('content')

   <div class="container shadow p-3">
   <nav aria-label="breadcrumb">
         <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('categories.index') }}">Categories</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add</li>
        </ol>
   </nav>

        @if(session('message'))
        <div class="alert alert-{{ session('success') ? 'success':'warning' }} alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
        <form action="{{ route('categories.store') }}" method="POST" class="form-control  shadow">
            @csrf
        <div class="row">

             <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control fw-bolder text-info" name="id_number" id="id_number" value="{{ $errors->any() ? old('id_number') : rand(1,2147483647) }}" placeholder="" required>
                    <label for="id_number">ID NUMBER @error('id')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" name="category_name" id="category_name" value="{{ old('category_name') }}" placeholder="" required>
                    <label for="category_name">CATEGORY NAME @error('category_name')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
            

            <div class="text-end">
            <button class="btn btn-outline-primary">Submit</button>
            </div>

        </div>

        </form>
        
        

        

        <div class="table-responsive"></div>

   </div>

@endsection