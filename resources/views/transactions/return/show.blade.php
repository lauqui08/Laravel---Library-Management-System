@extends('layouts.app')

@section('content')

<div class="container shadow p-3">
        <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('transactions.index') }}">Transactions</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{ Str::upper($member->first_name.' '.$member->last_name) }}</li>
        </ol>
        </nav>

    <table class="table">
        <thead>
            <tr  class="table-dark">
                <th>Transaction#</th>
                <th>ISBN</th>
                <th>Book Title</th>
                <th>Borrowed Date</th>
                <th></th>
            </tr>
            <tbody>

                    <tr>
                        <td>{{ $transaction->id }}</td>
                        <td>{{ $transaction->isbn }}</td>
                        <td>{{ $transaction->title }}</td>
                        <td>{{ $transaction->loan_date }}</td>
                        <td><a data-bs-toggle="modal" class="btn btn-outline-primary btn-sm" data-bs-target="#staticBackdrop">Process</a></td>
                    </tr>

            </tbody>
        </thead>
    </table>

</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
<form action="{{ route('return.store') }}" method="POST">
  @csrf
  <input type="hidden" name="loan_id" value="{{ $transaction->id }}">
  <input type="hidden" name="book_id" value="{{ $transaction->book_id }}">
  <input type="hidden" name="penalty" value="{{ $penalty }}">
  <input type="hidden" name="penalty_date" value="{{ date('Y/m/d',strtotime($transaction->loan_date.'+3 days')) }}">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Return: {{ $transaction->title }}</h1>
      </div>
      <div class="modal-body">
        <table class="table">
          <thead>
            <tr class="table-dark">
              <th>Borrowed Date</th>
              <th>Days Borrowed</th>
              <th>Returned Date</th>
              <th>Penalty</th>
            </tr>
            <tr>
              <td>{{ $transaction->loan_date }}</td>
              <td>{{ $borrowed_days }}</td>
              <td>{{ date('Y/m/d') }}</td>
              <td>${{ $penalty }}</td>
            </tr>
          </thead>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-outline-primary">Submit</button>
      </div>
    </div>
  </div>

</div>
</form>
@endsection