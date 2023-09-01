<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PaymentsController extends Controller
{
    //
    public function singlePaymentTransaction(Request $request)
    {
        return $request->cash_received;
    }

}
