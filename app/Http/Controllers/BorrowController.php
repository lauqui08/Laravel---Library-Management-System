<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Borrow;
use App\Models\Member;
use Illuminate\Http\Request;

class BorrowController extends Controller
{
    //
    public function create(Request $request)
    {
        
        if($request->query('select') && $request->query('q')){
            $members = Member::where($request->query('select'),'LIKE','%'.$request->query('q').'%')->paginate('10');
            return view('transactions.borrow.create',['members'=>$members]);
        }else{
            return view('transactions.borrow.create',['members'=>[]]);
        }
       
    }

    public function show($id)
    {
        $books = Book::paginate('15');
        $member = Member::findOrfail($id);
        $borrowed_books = Borrow::where(['member_id'=>$member->id, 'returned_date'=>null])->get();
        // dd($borrowed_books);

        return view('transactions.borrow.show',['books'=>$books,'member'=>$member,'borrowed_books'=>$borrowed_books]);
    }

    public function store(Request $request)
    {
        Borrow::create([
            'id'=>$request->loan_id,
            'book_id'=>$request->book_id,
            'member_id'=>$request->member_id,
            'loan_date'=>$request->loan_date,
        ]);

        return redirect(route('borrow.show',$request->member_id));
    }
}
