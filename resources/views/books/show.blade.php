@extends('layouts.app')

@section('content')

<div class="container shadow p-3">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('books.index') }}">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">View</li>
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
                    <input min="1" type="number" class="form-control fw-bolder text-info" name="book_id" id="book_id" value="{{ $book->id }}" placeholder="" disabled>
                    <label for="book_id">BOOK NUMBER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input title="INTERNATIONAL STANDARD BOOK NUMBER" type="text" class="form-control fw-bolder text-info" id="isbn" value="{{ $book->isbn }}" name="isbn" placeholder="" disabled>
                    <label for="isbn">ISBN</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control fw-bolder text-info" id="title" name="title" value="{{ $book->title }}" placeholder="" disabled>
                    <label for="title">TITLE</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select fw-bolder text-info" id="category_id" name="category_id" disabled>
                            <option selected>{{ $category->category_name }}</option>
                    </select>
                    <label for="category_id">CATEGORY</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control fw-bolder text-info" name="publication_date" id="publication_date" value="{{ $book->publication_date }}" placeholder="" disabled>
                    <label for="publication_date">PUBLICATION DATE</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1" max="9999999999" class="form-control fw-bolder text-info" id="copies_owned" name="copies_owned" value="{{ $book->copies_owned }}" placeholder="" disabled>
                    <label for="contact">COPIES OWNED</label>
                </div>
            </div>
        </div>

        <div class="row bg-info-subtle">
            <div class="row pt-3 pe-0 ps-3">
                <div class="col-6 text-start text-secondary"><label>AUTHOR/S</label></div>
                <div class="col-6 text-end mb-3">
                @if(count($authors) > 0)

                    @elseif(count($authors) === 0)
                    <a class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add Author</a>
                    @endif

                    @if(session('author-message'))
                    <a class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add Author</a> 
                    @endif

                </div>
                
                @if(session('author-message'))
                    <span class="text-{{ session('success') ? 'success':'warning' }}">
                        {{ session('author-message') }}
                    </span>
                @endif

            @foreach($authors as $author)
                <div class="col-md-3">
                    <div class="alert alert-info alert-dismissible fade show" role="alert">
                        <strong>{{ $author->first_name }} {{ $author->last_name }}</strong>
                    </div>

                </div>
            @endforeach
        </div>

        <div class="row mt-3">
            <div class="col">
                <div class="form-floating mb-3">
                    <textarea class="form-control fw-bolder text-info" placeholder="" name="description" id="description" style="height: 100px" disabled>{{ $book->book_description }}</textarea>
                    <label for="description">DESCRIPTION</label>
                </div>
            </div>
        </div>

        <div class="mt-3 text-end">
            <a href="{{ route('books.index') }}" class="btn btn-outline-secondary">Back to lists</a>
            <a href="{{ route('books.edit',$book->id) }}" class="btn btn-outline-primary">Edit</a>
        </div>
           
        </form>
    </div>











    <!-- Modal Add Author-->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
    <form action="{{ route('books.author.store') }}" method="POST">
                @csrf
                <input type="hidden" name="book_id" value="{{ $book->id }}" required>
                <input type="hidden" name="new_book" value="new_book">
        <div class="modal-content">
        <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">Select Author below you want to add.</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

                    <div class="form-floating mb-3">
                        <select class="form-select" id="author_id" name="author_id" required>
                            <option selected>Open this select menu</option>
                            @foreach($all_authors as $single_author)
                            <option value="{{ $single_author->id }}">{{ @$single_author->first_name }} {{ @$single_author->last_name }}</option>
                            @endforeach
                        </select>
                        <label for="author_id">AUTHORS</label>
                    </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
        </div>
        </form>
    </div>
    </div>


@endsection