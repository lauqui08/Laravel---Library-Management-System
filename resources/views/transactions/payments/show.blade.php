@extends('layouts.app')

@section('content')

    <div class="container shadow p-3">
            {{ $borrowed_books }}
            <div class="table-responsive">
                <table class="table">
                   
                    <thead>
                        <tr>
                            <th>Transaction#</th>
                            <th>ISBN</th>
                            <th>Title</th>
                            <th>Borrowed Date</th>
                            <th>Days Borrowed</th>
                            <th>Penalty</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $total=0; @endphp
                        @foreach($borrowed_books as $borrowed_book)

                            <tr>
                                <td>{{ $borrowed_book->id }}</td>
                                <td>{{ $borrowed_book->isbn }}</td>
                                <td>{{ $borrowed_book->title }}</td>
                                <td>{{ $borrowed_book->loan_date }}</td>
                                <td>
                                    @php

                                    $datetime1 = strtotime($borrowed_book->loan_date);
                                    $datetime2 = strtotime(date('Y/m/d'));
                                    $secs = $datetime2 - $datetime1;
                                    echo $days = $secs / 86400;

                                    @endphp
                                </td>
                                <td>$
                                    @php
                                    echo $penalty = $days > 3 ? ($days - 3) * 100 : 0;
                                    $total += $penalty;
                                    @endphp
                                </td>
                            </tr>

                        @endforeach
                        <tr>
                            <td colspan="5" class="text-end">Total</td>
                            <td>${{ $total }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="text-end">
                <form action="{{ route('multiplePayment') }}" method="POST">
                    @csrf
                    <input type="hidden" name="member_id" value="{{ $borrowed_books[0]->member_id }}" >
                    <input type="hidden" name="invoice_number" value="{{ rand(1,2147483647) }}" >
                    <button class="btn btn-outline-primary">Submit</button>
                </form>
            </div>
            
    </div>


@endsection('content')