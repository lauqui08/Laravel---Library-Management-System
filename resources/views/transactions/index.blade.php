@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">

        <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('transactions.index') }}">Transactions</a></li>
            <li class="breadcrumb-item active" aria-current="page">Lists</li>
        </ol>
        </nav>

       
            <div class="d-flex justify-content-end">

                 <div class="col-md-8 col-12 me-2">
                    @if(session('message'))
                        <div class="alert alert-{{ session('success') ? 'success':'warning' }} alert-dismissible fade show" role="alert">
                            {{ session('message') }} @if(session('forPayment')) <a href="{{ route('transactions.singlePayment',$_GET['loan_id'] ? $_GET['loan_id'] : '')}}" class="btn btn-primary"> Procees Payment</a> @endif
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif
                </div>
                <div class="col-md-4 col-12">
                <form action="{{ route('transactions.index') }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
                
            </div>

        <table class="table table-hover">
            <thead>
                <tr class="table-dark">
                    <th>Transaction#</th>
                    <th>Borrower</th>
                    <th>ISBN</th>
                    <th>Book Title</th>
                    <th>Borrowed Date</th>
                    <th>Returned Date</th>
                    <th></th>
                </tr>
                
            </thead>
            <tbody>
                @foreach($transactions as $transaction)
                    <tr>
                        <td>{{ $transaction->id }}</td>
                        <td>{{ $transaction->first_name.' '.$transaction->last_name }}</td>
                        <td>{{ $transaction->isbn }}</td>
                        <td>{{ $transaction->title }}</td>
                        <td>{{ $transaction->loan_date }}</td>
                        <td>{{ $transaction->returned_date }}</td>
                        <td>
                            @if($transaction->loan_date === null && $transaction->returned_date === null)
                            <form action="{{ route('borrow.destroy',$transaction->member_id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <input type="hidden" name="member_id" value="{{$transaction->member_id}}">
                                <input type="hidden" name="cancel-transaction">
                                <button type="submit" class="btn btn-outline-secondary btn-sm">Cancel</button>
                            </form>
                            @elseif($transaction->loan_date != null && $transaction->returned_date === null)
                                <a class="btn btn-outline-primary btn-sm" href="{{ route('return.show.single',[$transaction->member_id,$transaction->id]) }}">Return</a>
                            @else
                                <a class="btn btn-outline-info btn-sm" href="{{ route('transactions.singlePayment',$transaction->id) }}">View</a>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $transactions->appends($_GET)->onEachSide(2)->links("pagination::bootstrap-5") }}
    </div>
@endsection