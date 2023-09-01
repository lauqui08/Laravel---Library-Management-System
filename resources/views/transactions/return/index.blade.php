@extends('layouts.app')

@section('content')

<div class="container shadow p-3">
    
    <div class="table-responsive">

            <div class="d-flex justify-content-end">
                <div class="col-md-4 col-12">
                <form action="{{ route('return.index') }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
            </div>

        <table class="table">
            <thead>
                <tr class="table-dark">
                    <th>Full Name</th>
                    <th>Number of Books Borrowed</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            @foreach($borrowed_books as $borrowed_book)
                <tr>
                    <td>{{ $borrowed_book->first_name.' '.$borrowed_book->last_name }}</td>
                    <td>{{ $borrowed_book->borrowed_books }}</td>
                    <td class="text-end">
                        <a href="" class="btn btn-outline-info btn-sm">View</a>
                        <a href="" class="btn btn-outline-primary btn-sm">Return</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{ $borrowed_books->appends($_GET)->onEachSide(2)->links("pagination::bootstrap-5") }}
    </div>
</div>

@endsection