@extends('layouts.app')

@section('content')

    <div class="container shadow py-3">
        @if(session('message'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                {{ session('message') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
    <h3>{{ $book->title }}</h3>
        <div class="row border">
            <div class="col-md-6">
                <figure>
                    <blockquote class="blockquote">
                        <label>International Standard Book Number</label>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                         <cite title=" International Standard Book Number">{{ $book->isbn }}</cite>
                    </figcaption>
                </figure>

                <figure>
                    <blockquote class="blockquote">
                        <label>Publication Date</label>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                         <cite title="Publication Date">{{ $book->publication_date }}</cite>
                    </figcaption>
                </figure>

                <figure>
                    <blockquote class="blockquote">
                        <label>Category</label>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                         <cite title="Category">{{ $category->category_name }}</cite>
                    </figcaption>
                </figure>

                <figure>
                    <blockquote class="blockquote">
                        <label>Copies Owned</label>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                         <cite title="Copies Owned">{{ $book->copies_owned }}</cite>
                    </figcaption>
                </figure>

            </div>
            <div class="col-md-6">
                <figure>
                    <blockquote class="blockquote">
                        <label>Author/s</label>
                    </blockquote>
                    @if(count($authors) > 0)

                        @foreach($authors as $author)
                        <figcaption class="blockquote-footer">
                            <cite title="Author/s">{{ $author->first_name }} {{ $author->last_name }}</cite>
                        </figcaption>
                        @endforeach

                    @elseif(count($authors) === 0)
                    <a class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add Author</a>

                     @endif

                     @if(session('author-message'))<span class="text-success">{{ session('author-message') }}.</span> Click <a class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add Author</a> to add another author. @endif
                </figure>
                   

            <figure>
                    <blockquote class="blockquote">
                        <label>Description</label>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                         <cite title="Book Description"><p>{{ $book->book_description }}</p></cite>
                    </figcaption>
                </figure>
            </div>

        </div>
        <div class="mt-3 text-end">
            <a href="{{ route('books.index') }}" class="btn btn-outline-secondary">Back to lists</a>
            <a href="{{ route('books.edit',$book->id) }}" class="btn btn-outline-primary">Edit</a>
        </div>
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