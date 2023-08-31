<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PaymentsController extends Controller
{
    //

    public function index()
    {
        return 'index';
    }
    public function show($id)
    {
        return $id;
    }


}
