@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('authors.index') }}">Authors</a></li>
            <li class="breadcrumb-item active" aria-current="page">Lists</li>
        </ol>
    </nav>
        <div class="d-flex justify-content-end">
                <div class="col-md-4 col-12">
                <form action="{{ route('authors.index') }}" method="GET">

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
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                        @foreach($authors as $author)
                            <tr>
                                <td>{{ $author->first_name }}</td>
                                <td>{{  $author->last_name  }}</td>
                                <td><a class="btn btn-outline-primary btn-sm" href="{{ route('authors.show',$author->id)}}">View</a></td>
                            </tr>
                        @endforeach
                </tbody>
            </table>
        </div>
        {{ $authors->appends($_GET)->onEachSide(2)->links("pagination::bootstrap-5") }}

    </div>

@endsection