@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('books.index') }}">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Add</li>
    </ol>
    </nav>

        @if(session('message') && !$errors->any())
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif


        <form action="{{ route('books.store') }}" method="POST" class="form-control shadow">
            @csrf
        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input min="1" type="number" value="{{ $errors->any() ? old('book_id') : rand(1,2147483647) }}" class="form-control fw-bolder text-info" name="book_id" id="book_id" placeholder="" required>
                    <label for="book_id">BOOK NUMBER @error('id')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input title="INTERNATIONAL STANDARD BOOK NUMBER" type="text" value="{{ old('isbn') }}" class="form-control fw-bolder text-info" id="isbn" name="isbn" placeholder="" required>
                    <label for="isbn">ISBN @error('isbn')<span class="text-danger">{{ $message }}</span> @enderror</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="text" value="{{ old('title') }}" class="form-control fw-bolder text-info" id="title" name="title" placeholder="" required>
                    <label for="title">TITLE</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select fw-bolder text-info" id="category_id" name="category_id" required>
                        <option value="" selected>Open this select menu</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                        @endforeach
                    </select>
                    <label for="category_id">CATEGORY</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="date" value="{{ old('publication_date') }}" class="form-control fw-bolder text-info" name="publication_date" id="publication_date" placeholder="" required>
                    <label for="publication_date">PUBLICATION DATE</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" value="{{ old('copies_owned') }}" min="1" max="9999999999" class="form-control fw-bolder text-info" id="copies_owned" name="copies_owned" placeholder="" required>
                    <label for="copies_owned">COPIES OWNED</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-floating mb-3">
                    <textarea class="form-control fw-bolder text-info" placeholder="" name="description" id="description" style="height: 100px" required>{{ old('description') }}</textarea>
                    <label for="description">DESCRIPTION</label>
                </div>
            </div>
        </div>

        <div class="text-end">
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </div>
           
        </form>
    </div>
@endsection