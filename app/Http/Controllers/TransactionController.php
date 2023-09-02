<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
use App\Models\Fine;
use App\Models\FinePayment;
use App\Models\Loan;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    //
    public function index(Request $request)
    {
        $transactions = Borrow::join('book','loan.book_id','=','book.id')
        ->join('member','loan.member_id','=','member.id')
        ->select('loan.*','member.first_name','member.last_name','book.isbn','book.title')
        ->where('loan.id','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('member.id','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('member.first_name','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('member.last_name','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('book.isbn','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('book.title','LIKE','%'. $request->query('searchBook').'%')
        ->orderBy('loan.loan_date','DESC')
        ->paginate('10');
        return view('transactions.index',['transactions'=>$transactions]);
    }

    public function singlePayment($id)
    {

        $payment = Loan::join('fine','loan.id','=','fine.loan_id')
        ->join('book','loan.book_id','=','book.id')
        ->join('member','loan.member_id','=','member.id')
        ->where('loan.id',$id)
        ->select('loan.*','book.title','book.isbn','member.first_name','member.last_name','fine.fine_amount')
        ->first();

        $payment_details = Fine::join('loan','fine.loan_id','=','loan.id')
        ->join('member','loan.member_id','=','member.id')
        ->where('loan_id','=',$payment->id)
        ->first();

        $payment_status = FinePayment::join('fine','fine_payment.loan_id','=','fine.loan_id')
        ->where('fine.loan_id',$id)
        ->first();
        // dd($payment_status);
        // dd(count($payment_status));
        // dd( $payment);
        // dd($payment_status);
        return view('transactions.payments.single',[
            'payment'=>$payment,
            'payment_details'=>$payment_details,
            'payment_status'=>$payment_status
        ]);
        
    }


    public function create()
    {
        return view('transactions.create');
    }
}
