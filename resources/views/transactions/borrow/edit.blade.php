@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('transactions.index') }}">Transactions</a></li>
        <li class="breadcrumb-item active" aria-current="page">{{ Str::upper($member->first_name.' '.$member->last_name) }}</li>
    </ol>
    </nav>
        
        <h4>Check Out Confirmation</h4>

        <table class="table table-borderless">
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Borrowed Date</th>
                    <th>Expected Returned Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach($transactions as $transaction)
                <tr class="lh-1">
                    <td>{{ $transaction->isbn }}</td>
                    <td>{{ $transaction->title }}</td>
                    <td>{{ date('Y/m/d') }}</td>
                    <td>@php
                            $date = date_create(date('Y-m-d'));
                            date_add($date,date_interval_create_from_date_string("3 days"));
                            echo date_format($date,"Y-m-d");
                        @endphp
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="text-end">
            
            <form action="{{ route('borrow.update',$member->id) }}" method="POST">
                @csrf
                @method('PUT')
                <a data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-secondary">Cancel</a>
                <a href="{{ route('borrow.show',$member->id) }}" class="btn btn-outline-info">Edit</a>
                <button type="submit" class="btn btn-outline-primary">Confirm</button>
            </form>
        </div>
    </div>


    <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
 
<form action="{{ route('borrow.destroy',$member->id) }}" method="POST">
    @csrf
    @method('DELETE')
    <input type="hidden" name="member_id" value="{{ $member->id }}">
    <input type="hidden" name="cancel-transaction">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Are you sure you want to cancel this transaction?</h1>
      </div>
      <div class="modal-body">
        <p><span class="text-info">Note:</span> If you confirm this process, all books will be remove. You can click <span class="btn btn-outline-info btn-sm">Edit</span> if you need to remove/add a book on the list.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">No</button>
        <button type="submit" class="btn btn-outline-primary">Yes</button>
      </div>
    </div>
  </div>
 </form>

</div>

@endsection