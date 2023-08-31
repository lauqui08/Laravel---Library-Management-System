<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
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
        ->orWhere('member.first_name','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('member.last_name','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('book.isbn','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('book.title','LIKE','%'. $request->query('searchBook').'%')
        ->paginate('10');
        return view('transactions.index',['transactions'=>$transactions]);
    }

    public function singlePayment($id)
    {
        return view('transactions.payments.single');
    }

    public function create()
    {
        return view('transactions.create');
    }
}
