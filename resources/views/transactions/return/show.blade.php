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
            <tr>
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
                        <td><a data-bs-toggle="modal" data-bs-target="#staticBackdrop">Process</a></td>
                    </tr>

            </tbody>
        </thead>
    </table>

</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">

  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Return: {{ $transaction->title }}</h1>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>

</div>

@endsection