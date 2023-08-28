@extends('layouts.app');

@section('content')
    <div class="container shadow p-3">
        <form action="{{ route('books.store') }}" method="POST" class="form-control  shadow">
            @csrf
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input min="1" type="number" class="form-control" name="book_id" id="book_id" placeholder="" required>
                    <label for="book_id">BOOK NUMBER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input title="INTERNATIONAL STANDARD BOOK NUMBER" type="text" class="form-control" id="isbn" name="isbn" placeholder="" required>
                    <label for="isbn">ISBN</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="title" name="title" placeholder="" required>
                    <label for="title">TITLE</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select" id="category_id" name="category_id" required>
                        <option selected>Open this select menu</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                        @endforeach
                    </select>
                    <label for="category_id">CATEGORY</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" class="form-control" name="publication_date" id="publication_date" placeholder="" required>
                    <label for="publication_date">PUBLICATION DATE</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="1" max="9999999999" class="form-control" id="copies_owned" name="copies_owned" placeholder="" required>
                    <label for="copies_owned">COPIES OWNED</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="" name="description" id="description" style="height: 100px" required></textarea>
                    <label for="description">DESCRIPTION</label>
                </div>
            </div>
        </div>

        <div class="text-end">
            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
        </div>
           
        </form>
    </div>
@endsection