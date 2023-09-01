<?php

namespace App\Http\Controllers;

use App\Models\FinePayment;
use App\Models\Loan;
use App\Models\Member;
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

    public function multiplePayment(Request $request)
    {
        $loans = Loan::where('member_id',$request->member_id)->get();
        // dd($loans);
        // FinePayment::insert([
        //     'book_id'=>$loan->book_id,
        //     'loan_id'=>$loan->id,
        //     'fine_date'=>$fine_date,
        //     'fine_amount'=> $penalty,
        // ]);
        foreach($loans as $loan){

                                $datetime1 = strtotime($loan->loan_date);
                                $datetime2 = strtotime(date('Y/m/d'));

                                $secs = $datetime2 - $datetime1;// == <seconds between the two times>
                                $days = $secs / 86400;
                                $penalty = $days > 3 ? ($days - 3) * 100 : 0;
                                $fine_date = date('Y/m/d',strtotime($loan->loan_date.'+3 days'));
        }
        // return $request->member_id;
    }

    public function show($id)
    {
        $borrowed_books = Member::join('loan','member.id','=','loan.member_id')
        ->join('book','loan.book_id','=','book.id')
        ->whereNotNull('loan.loan_date')
        ->whereNull('loan.returned_date')
        ->where('member.id',$id)
        ->select(
            'book.isbn',
            'book.title',
            'loan.id',
            'loan.loan_date',
            'loan.member_id'
        )
        ->get();

        return view('transactions.payments.show',['borrowed_books'=> $borrowed_books]);
    }

}
