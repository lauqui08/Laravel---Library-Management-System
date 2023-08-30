@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">

        <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('transactions.index') }}">Transactions</a></li>
            <li class="breadcrumb-item active" aria-current="page">Lists</li>
        </ol>
        </nav>

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
                                <a href="">Cancel</a>
                            @elseif($transaction->loan_date != null && $transaction->returned_date === null)
                                <a href="{{ route('return.show.single',[$transaction->member_id,$transaction->id]) }}">Return</a>
                            @else
                                <a href="">View</a>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $transactions->onEachSide(2)->links("pagination::bootstrap-5") }}
    </div>
@endsection