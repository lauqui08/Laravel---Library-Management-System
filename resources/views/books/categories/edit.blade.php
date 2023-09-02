@extends('layouts.app')

@section('content')

   <div class="container shadow p-3">
   <nav aria-label="breadcrumb">
         <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('categories.index') }}">Books</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit</li>
        </ol>
   </nav>

        @if(session('message'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
        <form action="{{ route('categories.update',$category->id) }}" method="POST" class="form-control  shadow">
            @csrf
            @method('PUT')
        <div class="row">

             <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control fw-bolder text-info" name="id_number" id="id_number" value="{{ $category->id }}" placeholder="" disabled>
                    <label for="id_number">ID NUMBER</label>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" name="category_name" id="category_name" value="{{ $category->category_name }}" placeholder="" required>
                    <label for="category_name">CATEGORY NAME</label>
                </div>
            </div>
            

            <div class="text-end">
            <a href="{{ route('categories.show',$category->id) }}" class="btn btn-outline-secondary">Cancel</a>
            <button class="btn btn-outline-primary">Update</button>
            </div>

        </div>

        </form>
        
        

        

        <div class="table-responsive"></div>

   </div>

@endsection