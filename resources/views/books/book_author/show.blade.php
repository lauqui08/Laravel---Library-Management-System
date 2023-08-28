@extends('layouts.app')

@section('content')

    <div class="container">
        @if(session('message'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>{{ session('message') }}</strong> Please assign author for this book.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
    </div>

@endsection