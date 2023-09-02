@extends('layouts.app')

@section('content')

   <div class="container shadow p-3">
         <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('categories.index') }}">Categories</a></li>
            <li class="breadcrumb-item active" aria-current="page">View</li>
        </ol>

        <div class="row justify-content-center">

             <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control fw-bolder text-info" id="id_number" value="{{ $category->id }}" placeholder="" disabled>
                    <label for="id_number">ID NUMBER</label>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" id="category_name" value="{{ $category->category_name }}" placeholder="" disabled>
                    <label for="first_name">CATEGORY NAME</label>
                </div>
            </div>
            

               

           
        </div>
        <div class="text-end">

<a href="{{ route('categories.index') }}" class="btn btn-outline-secondary">Back to Lists</a>
   <a href="{{ route('categories.edit',$category->id) }}" class="btn btn-outline-primary">Edit</a>
   
</div>

        

        <div class="table-responsive"></div>

   </div>

@endsection