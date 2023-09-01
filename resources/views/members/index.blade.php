@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('members.index') }}">Members</a></li>
        <li class="breadcrumb-item active" aria-current="page">Lists</li>
    </ol>

    <div class="d-flex justify-content-end">
                <div class="col-md-4 col-12">
                <form action="{{ route('members.index') }}" method="GET">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control fw-bolder text-info" name="searchBook" id="searchBook" placeholder="Search book">
                        <label for="searchBook">
                            SEARCH BOX
                        </label>
                    </div>
                 </form>
                </div>
            </div>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr class="table-dark">
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th class="text-end">Menu</th>
                </tr>
            </thead>
            <tbody>
                @foreach($members as $member)
                <tr class="@if($member->active_status_id == '2'){{ 'table-warning' }}@endif">
                    <td>{{ $member->first_name }} {{ $member->last_name }}</td>
                    <td>{{ $member->email }}</td>
                    <td>{{ $member->contact }}</td>
                    <td class="text-end">
                    @if($member->active_status_id == 1)
                        <a class="btn btn-outline-primary btn-sm" href="{{ route('borrow.show',$member->id) }}">Borrow</a>
                    @else
                        <a class="btn btn-outline-info btn-sm" href="{{ route('members.show',$member->id) }}">Need to Activate</a>
                    @endif
                        <a class="btn btn-outline-primary btn-sm" href="{{ route('members.show',$member->id) }}">View</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
        {{ $members->appends($_GET)->onEachSide(2)->links('pagination::bootstrap-5')}}
    </div>
@endsection