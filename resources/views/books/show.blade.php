@extends('layouts.app')

@section('content')

    <div class="container shadow py-3">
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
                         <cite title="Category">{{ $book->category_id }}</cite>
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
                    @foreach($authors as $author)
                    <figcaption class="blockquote-footer">
                        <cite title="Author/s">{{ $author->first_name }} {{ $author->last_name }}</cite>
                    </figcaption>
                    @endforeach
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

@endsection