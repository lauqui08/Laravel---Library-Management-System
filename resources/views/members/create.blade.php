@extends('layouts.app');

@section('content')
    <div class="container">
        <form action="" method="POST" class="form-control">
            @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="first_name" placeholder="" required>
                    <label for="first_name">FIRST NAME</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="last_name" placeholder="" required>
                    <label for="last_name">LAST NAME</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <select class="form-select" id="gender">
                        <option selected>Open this select menu</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                    <label for="gender">GENDER</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="email" placeholder="" required>
                    <label for="email">EMAIL</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-floating mb-3">
                    <input type="number" min="9999999999" max="9999999999" class="form-control" id="contact" placeholder="" required>
                    <label for="contact">CONTACT NUMBER</label>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="" name="member_address" id="member_address" style="height: 100px"></textarea>
                    <label for="member_address">ADDRESS</label>
                </div>
            </div>
        </div>

        <div class="text-end">
            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
        </div>
           
        </form>
    </div>
@endsection