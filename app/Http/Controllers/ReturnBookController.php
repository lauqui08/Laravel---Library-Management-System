<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
use App\Models\Fine;
use App\Models\Member;
use Illuminate\Http\Request;

class ReturnBookController extends Controller
{
    //
    public function show($member_id,$transaction_id)
    {
             $member = Member::findOrfail($member_id);


            $transaction = Borrow::join('book','loan.book_id','=','book.id')
            ->join('member','loan.member_id','=','member.id')
            ->where('loan.member_id',$member_id)
            ->where('loan.id',$transaction_id)
            ->whereNull('loan.returned_date')
            ->whereNotNull('loan.loan_date')
            ->select('loan.*','member.first_name','member.last_name','book.isbn','book.title')
            ->get();


                //<get number of days between borrowed date and returned date>
                         $datetime1 = strtotime($transaction[0]->loan_date);
                         $datetime2 = strtotime(date('Y/m/d'));

                        $secs = $datetime2 - $datetime1;// == <seconds between the two times>
                         $days = $secs / 86400;

                //     dd($days);
                //</get number of days between borrowed date and returned date>
                //<get Penalty>
                         $penalty = $days > 3 ? ($days - 3) * 100 : 0;
                //</penalty>
            
    
            // dd($transactions[0]);
            return view('transactions.return.show',['transaction'=>$transaction[0],'member'=>$member,'penalty'=>$penalty,'borrowed_days'=>$days]);

       
    }

    public function store(Request $request)
    {

        Fine::create([
                'book_id'=>$request->book_id,
                'loan_id'=>$request->loan_id,
                'fine_date'=>$request->penalty_date,
                'fine_amount'=>$request->penalty,
        ]);

        Borrow::find($request->loan_id)
        ->update([
                'returned_date'=> date('Y/m/d'),
        ]);

        if($request->penalty == 0){
                return "wala kang babayaran";
        }else{
                return "may babayaran kapa";
        }
    }
}
