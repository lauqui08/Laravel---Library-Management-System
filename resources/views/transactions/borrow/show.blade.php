@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('transactions.index') }}">Transactions</a></li>
        <li class="breadcrumb-item active" aria-current="page">{{ Str::upper($member->first_name.' '.$member->last_name) }}</li>
    </ol>
    </nav>

        <div class="my-1 text-end">
            <a href="{{ count($borrowed_books) ? route('borrow.edit',$member->id) : '#' }}" class="btn btn-primary position-relative" disabled>
            CHECK OUT BOOKS
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                    {{ count($borrowed_books) ? count($borrowed_books) : 0 }}
                    <span class="visually-hidden">unread messages</span>
                </span>
            </a>
        </div>

        <div class="row">
        <div class="d-flex justify-content-start">
                <div class="col-md-6 col-12">
                <form action="{{ route('borrow.show',$member->id) }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
            </div>
            <div class="col-md-6 border">
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
                        <tr class="lh-1">
                            <td>{{ $book->isbn }}</td>
                            <td>{{ $book->title }}</td>
                            <td>{{ $book->category_name }}</td>
                            <td><a data-id="{{ $book->id }}" data-title="{{ $book->title }}" class="getBookId btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add</a></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="">
                    {{ $books->appends($_GET)->onEachSide(1)->links("pagination::bootstrap-5") }}
                </div>
            </div>
            <div class="col-md-6 border">
                <h4 class="p-2">LISTS</h4>
                @if(session('message'))
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    {{ session('message') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif
                <table class="table table-hover">
                    <tbody>
                        @foreach($borrowed_books as $borrowed_book)
                            <tr class="lh-1">
                                <td class="fw-bold">{{ $borrowed_book->title }}</td>
                                <td>{{ $borrowed_book->category_name }}</td>
                                <td>
                                    <form action="{{ route('borrow.destroy',$borrowed_book->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <input type="hidden" name="member_id" value="{{ $member->id }}">
                                        <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <form action="{{ route('borrow.store') }}" method="POST" class="formModal">
                @csrf
                <input type="hidden" class="bookID" name="book_id">
                <input type="hidden" class="memberID" name="member_id" value="{{$member->id}}">
                <input type="hidden" name="loan_id" value="{{rand(1,2147483647)}}">
                <!-- <input type="hidden" name="loan_date" value="{{ date('Y/m/d') }}"> -->

                <div class="modal-dialog">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to add this book?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-primary">Yes</button>
                    </div>
                    </div>
                </div>
            </form>
        </div>

    <script>
        const datas = document.querySelectorAll('.getBookId');
        const modalTitle = document.querySelector('.modal-title');
        const formModal = document.querySelector('.formModal');

        datas.forEach((data) => {
            data.addEventListener('click',(e) => {
                modalTitle.textContent = `Book Title: ${e.target.dataset.title}`;
                formModal.book_id.value = e.target.dataset.id;
            });
        });
    </script>
@endsection