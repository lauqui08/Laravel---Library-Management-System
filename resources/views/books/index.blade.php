@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('books.index') }}">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Lists</li>
    </ol>
    </nav>

        <table class="table table-hover table-sm table-bordered">
            <thead>
                <tr class="table-dark">
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Menu</th>
                </tr>

                @foreach($books as $book)
                <tr>
                    <td>{{ $book->isbn }}</td>
                    <td>{{ $book->title }}</td>
                    <td></td>
                    <td class="text-center"><a class="btn btn-outline-primary btn-sm" href="{{ route('books.show',$book->id) }}">View</a></td>
                </tr>
                @endforeach
            </thead>
        </table>
    {{ $books->onEachSide(5)->links("pagination::bootstrap-5") }}
    </div>

@endsection