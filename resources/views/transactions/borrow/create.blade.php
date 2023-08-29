@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">
            <form action="" class="form-control" method="GET">
            @csrf
            <div class="row">
            

                <div class="col-md-4">
                    <div class="form-floating mb-3">
                        <select class="form-select" id="select" name="select" required>
                            <option value="" selected>Open this select menu</option>
                            <option value="id">ID Number</option>
                            <option value="first_name">First Name</option>
                            <option value="last_name">Last Name</option>
                        </select>
                        <label for="select">SEARCH BY</label>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="form-floating mb-3">
                        <input type="text" value="{{ Request::query('q') }}" class="form-control" id="q" name="q" placeholder="" required>
                        <label for="q">QUERY</label>
                    </div>
                </div>
            </div>
                
                <div class="text-end">
                    <button type="submit" class="btn btn-primary btn-lg">Search</button>
                </div>
            </form>

            @if(count($members) > 0)
            <p>Search by: {{ Request::query('select') ? Request::query('select') : '' }}, Searching... {{ Request::query('q') ? Request::query('q') : '' }}</p>
            <table class="table table-hover table-bordered">
                <thead>
                    <tr class="table-dark">
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Menu</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($members as $member)
                    <tr class="@if($member->active_status_id == '2'){{ 'table-warning' }}@endif">
                        <td>{{ $member->first_name }} {{ $member->last_name }}</td>
                        <td>{{ $member->email }}</td>
                        <td>{{ $member->contact }}</td>
                        <td class="text-center">
                            <form action="{{ route('borrow.show',$member->id) }}" method="GET">
                                <button type="submit" class="btn btn-outline-primary btn-sm">Proceed Transaction</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            
            @endif


    </div>
@endsection