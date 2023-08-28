@extends('layouts.app')

@section('content')

    <div class="container shadow">
        <table class="table table-hover table-sm table-bordered">
            <thead>
                <tr>
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
                    <td><a href="{{ route('books.show',$book->id) }}">View</a></td>
                </tr>
                @endforeach
            </thead>
        </table>

    </div>

@endsection