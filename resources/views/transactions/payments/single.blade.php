@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    @if(session('message'))
        <div class="alert alert-info alert-dismissible fade show" role="alert">
            {{ $session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    </div>

@endsection()