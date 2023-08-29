<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Member;
use Illuminate\Http\Request;

class BorrowController extends Controller
{
    //
    public function create(Request $request)
    {
        $books = Book::all();
        $members = Member::all();
        $member_id = $request->query('member_id');
        $book_id = $request->query('book_id');
        
        return view('transactions.borrow.create');
    }
}
