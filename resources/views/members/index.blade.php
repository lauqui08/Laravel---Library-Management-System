@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('members.index') }}">Members</a></li>
        <li class="breadcrumb-item active" aria-current="page">Lists</li>
    </ol>
        <table class="table table-hover">
            <thead>
                <tr class="table-dark">
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th class="text-center">Menu</th>
                </tr>
            </thead>
            <tbody>
                @foreach($members as $member)
                <tr class="@if($member->active_status_id == '2'){{ 'table-warning' }}@endif">
                    <td>{{ $member->first_name }} {{ $member->last_name }}</td>
                    <td>{{ $member->email }}</td>
                    <td>{{ $member->contact }}</td>
                    <td class="text-end">
                        <a class="btn btn-outline-primary btn-sm" href="{{ route('borrow.show',$member->id) }}">Borrow</a>
                        <a class="btn btn-outline-primary btn-sm" href="{{ route('members.show',$member->id) }}">Reserve</a>
                        <a class="btn btn-outline-primary btn-sm" href="{{ route('members.show',$member->id) }}">View</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $members->onEachSide(2)->links('pagination::bootstrap-5')}}
    </div>
@endsection