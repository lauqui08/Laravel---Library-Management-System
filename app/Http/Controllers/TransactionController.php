<?php

namespace App\Http\Controllers;

use App\Models\Borrow;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    //
    public function index()
    {
        $transactions = Borrow::join('book','loan.book_id','=','book.id')
        ->join('member','loan.member_id','=','member.id')
        ->select('loan.*','member.first_name','member.last_name','book.isbn','book.title')
        ->paginate('10');
        return view('transactions.index',['transactions'=>$transactions]);
    }

    public function create()
    {
        return view('transactions.create');
    }
}
