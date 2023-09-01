<?php

namespace App\Http\Controllers;

use App\Models\FinePayment;
use Illuminate\Http\Request;

class PaymentsController extends Controller
{
    //
    public function singlePaymentTransaction(Request $request)
    {

        if($request->cash_received < $request->amount_to_pay){
            return redirect(route('transactions.singlePayment',$request->loan_id))->with('message','Unable to process Payment. Insufficient payment received');
        }else{

            FinePayment::insert([
                'invoice_number'=>$request->invoice_number,
                'loan_id'=>$request->loan_id,
                'member_id'=>$request->member_id,
                'payment_date'=>date('Y/m/d'),
                'payment_amount'=>$request->amount_to_pay
            ]);
            return redirect(route('transactions.singlePayment',$request->loan_id))->with('message','Successfully paid Penalty.');
        }
    }

}
