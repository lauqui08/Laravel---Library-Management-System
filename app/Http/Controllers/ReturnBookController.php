<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
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



                    $datetime1 = strtotime($transaction[0]->loan_date);
                    $datetime2 = strtotime(date('Y/m/d'));

                    $secs = $datetime2 - $datetime1;// == <seconds between the two times>
                    $days = $secs / 86400;

                    dd($days);
            
    
            // dd($transactions[0]);
            return view('transactions.return.show',['transaction'=>$transaction[0],'member'=>$member]);

       
    }
}
