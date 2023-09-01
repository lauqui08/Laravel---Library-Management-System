@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">

    @if(session('message'))
        <div class="alert alert-info alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    <div class="table-responsive">
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
    </div>
    

        <div class="text-end">
            @if($payment_status)
                <a data-bs-toggle="modal" data-bs-target="#staticBackdropPrint" class="btn btn-outline-primary">Print Preview</a>
            @else
                @if($payment->fine_amount == 0)
                    <p>No Payment needed: Book is returned on time!</p>
                @else
                <a data-bs-toggle="modal" data-bs-target="#staticBackdropPayment" class="btn btn-outline-primary">Payment</a>   
                @endif
            @endif
        </div>
    </div>


            <!-- Modal Payment-->
            <div class="modal fade" id="staticBackdropPayment" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                <form action="{{ route('singelPaymentTransaction') }}" method="POST">
                    @csrf
                    @php
                        $invoice_number = rand(1,2147483647);
                    @endphp
                    <input type="hidden" name="amount_to_pay" value="{{ $payment->fine_amount }}">
                    <input type="hidden" name="invoice_number" value="{{ $invoice_number }}">
                    <input type="hidden" name="member_id" value="{{ $payment_details->member_id }}">
                    <input type="hidden" name="loan_id" value="{{ $payment_details->loan_id }}">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Invoice No. {{ $invoice_number }}</h1>
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

            <!-- Modal Print Preview-->
            <div class="modal fade" id="staticBackdropPrint" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Print Preview</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                            @if($payment_status)
                                <div class="row" id="printableArea">
                                    <p class="ms-5 mt-5 fw-bold">Invoice# {{ $payment_status->invoice_number }}</p>
                                    <p class="ms-5">
                                        <span class="d-block fw-bold">Issued To:</span>
                                        {{ $payment->first_name.' '.$payment->last_name }}
                                        <span class="d-block fw-bold">Issued Date:</span>
                                        {{ $payment_status->payment_date }}
                                    </p>
                                    <p class="text-center">-------------- Borrowed Details --------------</p>
                                    <p class="ms-5 mt-1">
                                        <span class="d-block fw-bold">Book details</span>
                                        {{ $payment->isbn.' '.$payment->title }}
                                        <span class="d-block fw-bold">Borrowed Dates</span>
                                        {{ $payment->loan_date.' - '.$payment->returned_date }}
                                        <span class="d-block fw-bold">Expected Returned Date</span>
                                                @php
                                                    $date = date_create($payment->loan_date);
                                                    date_add($date,date_interval_create_from_date_string("3 days"));
                                                    echo date_format($date,"Y/m/d");
                                                @endphp
                                        <span class="d-block fw-bold">Number of days penalized</span>
                                        @php
                                                $datetime1 = strtotime($payment->loan_date);
                                                $datetime2 = strtotime($payment->returned_date);

                                                $secs = $datetime2 - $datetime1;// == <seconds between the two times>
                                                echo $days = $secs / 86400;
                                        @endphp
                                    </p>
                                    <p class="fst-italic ms-5 pe-5">
                                        Note: Formula in getting the amount of penalty is ((Number of days Penalized) multiply by $100). You only have 3 days for free to borrow a book. Beyond that three days will be penalized $100 per day.
                                    </p>
                                    <p class="text-end pe-5"><span class="fw-bold">Amount Paid: </span>${{ $payment_status->payment_amount  }}</p>
                                </div>
                            @endif
                </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a href="javascript:void(0);" onclick="printPageArea('printableArea')" class="btn btn-outline-primary">Print</a>
                </div>
                </div>
            </div>
            </div>

<script>
    function printPageArea(areaID){
    var printContent = document.getElementById(areaID).innerHTML;
    var originalContent = document.body.innerHTML;
    document.body.innerHTML = printContent;
    window.print();
    document.body.innerHTML = originalContent;
}
</script>

@endsection()