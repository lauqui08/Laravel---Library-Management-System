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
        $books = Book::join('category','book.category_id','=','category.id')->select('book.*','category.category_name')->paginate('10');
        $member = Member::findOrfail($id);
        $borrowed_books = Borrow::where(['member_id'=>$member->id, 'loan_date'=>null])
        ->join('book','loan.book_id','=','book.id')
        ->join('category','book.category_id','=','category.id')
        ->select('loan.id','book.title','category.category_name')
        ->get();

        
        // dd($borrowed_books);


        return view('transactions.borrow.show',['books'=>$books,'member'=>$member,'borrowed_books'=>$borrowed_books]);
    }

    public function store(Request $request)
    {

        $check_request = Borrow::where(['book_id'=>$request->book_id,'member_id'=>$request->member_id])->get();

        if(count($check_request) > 0){
            $check_onhand = $check_request -> where('loan_date',!null);
            // dd(count($check_onhand));
            if(count($check_onhand) > 0){
                return redirect(route('borrow.show',$request->member_id))->with('message','Book with the same title is not yet returned. Must be returned first.');
            }else{
                return redirect(route('borrow.show',$request->member_id))->with('message','Book is already on the list.');
            }
        }else{

            Borrow::create([
                'id'=>$request->loan_id,
                'book_id'=>$request->book_id,
                'member_id'=>$request->member_id,
                'loan_date'=>$request->loan_date,
            ]);
    
            return redirect(route('borrow.show',$request->member_id));
        }

        
    }

    public function destroy(Request $request,$id='')
    {
        
        if(isset($_POST['cancel-transaction'])){
            Borrow::where(['member_id'=>$request->member_id,'loan_date'=>null])
            ->delete();

            return redirect(route('transactions.index'))->with(['message'=>'Cancelled transaction/s','success'=>false]);
        }else{
        Borrow::find($id)->delete();
        // dd($bb);
        return redirect(route('borrow.show',$request->member_id));

        }
    }

    public function edit($id)
    {
        $transactions = Borrow::join('book','loan.book_id','=','book.id')
        ->join('member','loan.member_id','=','member.id')
        ->where(['member.id'=>$id,'loan_date'=>null])
        ->get();

        $member = Member::find($id);

        return view('transactions.borrow.edit',['transactions'=>$transactions,'member'=>$member]);
    }

    public function update($id)
    {
        Borrow::where('member_id',$id)
        ->update([
            'loan_date'=>date('Y/m/d'),
        ]);

        return redirect(route('transactions.index'))->with(['message'=>'Successfully added new transaction/s','success'=>true]);
    }
}
