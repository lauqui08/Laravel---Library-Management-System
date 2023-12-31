@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('books.index') }}">Books</a></li>
        <li class="breadcrumb-item active" aria-current="page">Lists</li>
    </ol>
    </nav>
           
            <div class="d-flex justify-content-end">
                <div class="col-md-4 col-12">
                <form action="{{ route('books.index') }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
            </div>

        <table class="table table-hover">
            <thead>
                <tr class="table-dark">
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Menu</th>
                </tr>
            </thead>
            <tbody>
                @foreach($books as $book)
                <tr class="@if($book->copies_owned == '0'){{ 'table-warning' }}@endif">
                    <td>{{ $book->isbn }}</td>
                    <td>{{ $book->title }}</td>
                    <td>{{ $book->category_name }}</td>
                    <td class="text-center"><a class="btn btn-outline-primary btn-sm" href="{{ route('books.show',$book->id) }}">View</a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
    {{ $books->appends($_GET)->onEachSide(2)->links("pagination::bootstrap-5") }}
    </div>

@endsection