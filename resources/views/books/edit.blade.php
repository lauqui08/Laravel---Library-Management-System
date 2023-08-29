@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('books.index') }}">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit</li>
    </ol>
    </nav>
        @if(session('message'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
        <form action="{{ route('books.update',$book->id) }}" method="POST" class="form-control  shadow">
            @csrf
            @method('PUT')
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input min="1" type="number" class="form-control" name="book_id" id="book_id" value="{{ $book->id }}" placeholder="" required>
                    <label for="book_id">BOOK NUMBER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input title="INTERNATIONAL STANDARD BOOK NUMBER" type="text" class="form-control" id="isbn" value="{{ $book->isbn }}" name="isbn" placeholder="" required>
                    <label for="isbn">ISBN</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="title" name="title" value="{{ $book->title }}" placeholder="" required>
                    <label for="title">TITLE</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select" id="category_id" name="category_id">
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}" @if($category->id == $book->category) {{ 'selected' }} @endif>{{ $category->category_name }}</option>
                        @endforeach
                    </select>
                    <label for="category_id">CATEGORY</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control" name="publication_date" id="publication_date" value="{{ $book->publication_date }}" placeholder="" required>
                    <label for="publication_date">PUBLICATION DATE</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1" max="9999999999" class="form-control" id="copies_owned" name="copies_owned" value="{{ $book->copies_owned }}" placeholder="" required>
                    <label for="contact">COPIES OWNED</label>
                </div>
            </div>
        </div>

        <div class="row bg-info-subtle">
            <div class="row pt-3 pe-0 ps-3">
                <div class="col-6 text-start text-secondary"><label>AUTHOR/S</label></div>
                <div class="col-6 text-end mb-3"><a class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#{{ $book->id }}">Add Author</a></div>
                @if(session('author-message'))<span class="text-success">{{ session('author-message') }}</span>@endif
            </div>
            @foreach($authors as $author)
                <div class="col-md-3">
                    <div class="alert alert-info alert-dismissible fade show" role="alert">
                        <strong>{{ $author->first_name }} {{ $author->last_name }}</strong>
                        <a class="btn-close btn" data-bs-toggle="modal" data-bs-target="#{{$author->id}}"></a>
                    </div>

                </div>
            @endforeach
        </div>

        <div class="row mt-3">
            <div class="col">
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="" name="description" id="description" style="height: 100px" required>{{ $book->book_description }}</textarea>
                    <label for="description">DESCRIPTION</label>
                </div>
            </div>
        </div>

        <div class="text-end">
            <a href="{{ route('books.show',$book->id) }}" class="btn btn-outline-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
           
        </form>
    </div>

    <!-- Modal Delete Author-->
    @foreach($authors as $author)
        <div class="modal fade" id="{{ $author->id }}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Are you sure you want to remove <span class="text-primary-emphasis text-nowrap bg-body-secondary border">{{ $author->first_name }} {{ $author->last_name }}</span> as author of <span class="text-primary-emphasis text-nowrap bg-body-secondary border">{{ $book->title }}</span> ?</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="text-warning">Note:</span> Once you remove this author it will authomatically deleted on the list. To add this author again, you may click <span class="btn btn-primary btn-sm">Add Author</span> button to add again.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <form action="{{ route('books.author.destroy') }}" method="POST">
                    <input type="hidden" name="author_id" value="{{ $author->id }}">
                    <input type="hidden" name="book_id" value="{{ $book->id }}">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
            </div>
            </div>
        </div>
        </div>
    @endforeach

    <!-- Modal Add Author -->
        <div class="modal fade" id="{{ $book->id }}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
        <form action="{{ route('books.author.store') }}" method="POST" class="for-control">
            <input type="hidden" name="book_id" value="{{ $book->id }}">
            @csrf
            <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Select Author below you want to add.</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                    <div class="form-floating mb-3">
                        <select class="form-select" id="author_id" name="author_id">
                            <option selected>Open this select menu</option>
                            @foreach($all_authors as $single_author)
                            <option value="{{ $single_author->id }}">{{ @$single_author->first_name }} {{ @$single_author->last_name }}</option>
                            @endforeach
                        </select>
                        <label for="author_id">AUTHORS</label>
                    </div>
                    
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
            </div>
            </form> 
        </div>
        </div>




@endsection