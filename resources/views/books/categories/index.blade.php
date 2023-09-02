@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('categories.index') }}">Categories</a></li>
            <li class="breadcrumb-item active" aria-current="page">Lists</li>
        </ol>
    </nav>
        <div class="d-flex justify-content-end">
                <div class="col-md-4 col-12">
                <form action="{{ route('categories.index') }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
        </div>

        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr class="table-dark">
                        <th>ID</th>
                        <th>Category Name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                        @foreach($categories as $category)
                            <tr>
                                <td>{{ $category->id }}</td>
                                <td>{{  $category->category_name  }}</td>
                                <td><a class="btn btn-outline-primary btn-sm" href="{{ route('categories.show',$category->id)}}">View</a></td>
                            </tr>
                        @endforeach
                </tbody>
            </table>
        </div>
        {{ $categories->appends($_GET)->onEachSide(2)->links("pagination::bootstrap-5") }}

    </div>

@endsection