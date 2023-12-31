<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Library Management System') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <style>
        @media print {
            @page {
            margin: 0;
            }

            body {
            margin: 1.6cm;
            }
        }
    </style>


    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    <div id="app">
        
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm sticky-sm-top">
            <div class="container">
                <a class="navbar-brand shadow p-1" href="{{ url('/') }}">
                    {{ config('app.name', 'Library Management System') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">


                    <!-- Books menu -->

                    <div class="dropdown">
                    <button class="link link-secondary dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">
                        Books
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li><a class="dropdown-item" href="{{ route('books.index') }}">Lists</a></li>
                        <li><a class="dropdown-item" href="{{ route('books.create') }}">Add</a></li>
                    </ul>
                    </div>

                    <!-- Members menu -->
                    <div class="dropdown">
                    <button class="link link-secondary dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">
                        Members
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li><a class="dropdown-item" href="{{ route('members.index') }}">Lists</a></li>
                        <li><a class="dropdown-item" href="{{ route('members.create') }}">Add</a></li>
                    </ul>
                    </div>

                    <!-- Transactions menu -->
                    <div class="dropdown">
                    <button class="link link-secondary dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">
                        Transactions
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li><a class="dropdown-item" href="{{ route('transactions.index') }}">Lists</a></li>
                        <li><a class="dropdown-item" href="{{ route('borrow.create') }}">Borrow Book</a></li>
                        <!-- <li><a class="dropdown-item" href="{{ route('return.index') }}">Return Book</a></li> -->
                        <!-- <li><hr class="dropdown-divider"></li> -->
                        <!-- <li><a class="dropdown-item" href="#">Payments</a></li> -->
                    </ul>
                    </div>

                    <!-- Authors menu -->
                    <div class="dropdown">
                    <button class="link link-secondary dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">
                        Authors
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li>
                        <a class="dropdown-item" href="{{ route('authors.index') }}">Lists</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="{{ route('authors.create') }}">Add</a>
                        </li>
                    </ul>
                    </div>

                    <!-- Authors menu -->
                    <div class="dropdown">
                    <button class="link link-secondary dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">
                        Categories
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li>
                        <a class="dropdown-item" href="{{ route('categories.index') }}">Lists</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="{{ route('categories.create') }}">Add</a>
                        </li>
                    </ul>
                    </div>

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>


    </div>

    
  
</body>
</html>
