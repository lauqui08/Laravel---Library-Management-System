@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    @if(session('message'))
        <div class="alert alert-info alert-dismissible fade show" role="alert">
            {{ $session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

        {{ $payment_status }}

        <table class="table">
            <thead>
                <tr>
                    <th>Transaction #</th>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Borrowed Date</th>
                    <th>Returned Date</th>
                    <th>Penalty</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $payment->id }}</td>
                    <td>{{ $payment->isbn }}</td>
                    <td>{{ $payment->title }}</td>
                    <td>{{ $payment->loan_date }}</td>
                    <td>{{ $payment->returned_date }}</td>
                    <td>${{ $payment->fine_amount }}</td>
                </tr>
            </tbody>
        </table>
        <div class="text-end">
            @if($payment_status)
                <a href="" class="btn btn-outline-secondary">Print</a>
            @else
                <a data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-primary">Payment</a>
            @endif
        </div>
    </div>


    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <form action="{{ route('singelPaymentTransaction') }}" method="POST">
        @csrf
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Invoice No. {{ rand(1,2147483647) }}</h1>
      </div>
      <div class="modal-body">
        <p>Amount to pay: ${{ $payment->fine_amount }}</p>

        <label for="cash_received">Cash Received</label>
        <div class="input-group mb-3">
            <span class="input-group-text">$</span>
            <input type="number" name="cash_received" value="{{ old('cash_received') }}" id="cash_received" class="form-control" required>
        </div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-outline-primary">Submit</button>
      </div>
    </form>

    </div>
  </div>
</div>

@endsection()