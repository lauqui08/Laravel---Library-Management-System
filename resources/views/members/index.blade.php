@extends('layouts.app')

@section('content')
    <div class="container shadow p-3">
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
                <tr>
                    <td>{{ $member->first_name }} {{ $member->last_name }}</td>
                    <td>{{ $member->email }}</td>
                    <td>{{ $member->contact }}</td>
                    <td><a href="{{ $member->id }}">View</a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $members->links('pagination::bootstrap-5')}}
    </div>
@endsection