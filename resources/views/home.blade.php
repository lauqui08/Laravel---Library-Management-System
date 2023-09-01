@extends('layouts.app')

@section('content')
<div class="container">

<div class="row justify-content-center mb-3">

<h3>Todays Report</h3>
    <div class="col-md-3 col-12 text-center mb-3">
        <div class="card border-info">
            <div class="card-header border-info">
                <span class="fw-bolder text-info">Borrowed Books</span>
            </div>
            <div class="card-body">
            <span class="fw-bolder text-info">{{ $borrowed_books_today }}</span>
            </div>
        </div>
    </div>

    <div class="col-md-3 col-12 text-center mb-3">
        <div class="card border-info">
            <div class="card-header border-info">
            <span class="fw-bolder text-info">Returned Books</span>
            </div>
            <div class="card-body">
            <span class="fw-bolder text-info">{{ $returned_books_today }}</span>
            </div>
        </div>
    </div>

   
    <div class="col-md-3 col-12 text-center mb-3">
        <div class="card border-danger">
            <div class="card-header border-danger">
            <span class="fw-bolder text-danger">UnReturned Books</span>
            </div>
            <div class="card-body">
            <span class="fw-bolder text-danger">{{ $unreturned_books }}</span>
            </div>
        </div>
    </div>


    <div class="col-md-3 col-12 text-center mb-3">
        <div class="card border-success">
            <div class="card-header border-success">
            <span class="fw-bolder text-success">Penalty Collected</span>
            </div>
            <div class="card-body">
            <span class="fw-bolder text-success">${{ $penalty_collected_today }}</span>
            </div>
        </div>
    </div>


</div>



    <div class="row justify-content-center mb-3">

    <h3>All Time Reports</h3>
        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Number of Books Title
            </div>
            <div class="card-body">
                {{ $count_books }}
            </div>
            </div>
        </div>

        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Number of Books
            </div>
            <div class="card-body">
                {{ $count_all_books }}
            </div>
            
            </div>
        </div>
        

        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Active Members
            </div>
            <div class="card-body">
                {{ $count_members_active }}
            </div>
            
            </div>
        </div>

        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                In-Active Members
            </div>
            <div class="card-body">
                {{ $count_members_inactive }}
            </div>

            </div>
        </div>
        


    </div>

    <div class="row justify-content-center mb-3">

   

    <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Authors
            </div>
            <div class="card-body">
                {{ $authors }}
            </div>
           
            </div>
        </div>

        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Categories
            </div>
            <div class="card-body">
                {{ $categories }}
            </div>
           
            </div>
        </div>

        <div class="col-md-3 col-12 text-center mb-3">
            <div class="card">
            <div class="card-header">
                Borrowed Books
            </div>
            <div class="card-body">
                {{ $count_borrowed_transactions }}
            </div>
           
            </div>
        </div>
    

    <div class="col-md-3 col-12 text-center mb-3">
        <div class="card">
        <div class="card-header">
            Penalty Collected
        </div>
        <div class="card-body">
            ${{ $penalty_collected_all }}
        </div>

        </div>
    </div>


</div>
    
</div>
@endsection
