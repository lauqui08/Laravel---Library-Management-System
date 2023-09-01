<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use App\Models\FinePayment;
use App\Models\Loan;
use App\Models\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        date_default_timezone_set("Asia/Manila");
        
        $count_books = Book::get()->count();
        $count_members_active = Member::where('active_status_id',1)->get()->count();
        $count_members_inactive = Member::where('active_status_id',2)->get()->count();
        $count_borrowed_transactions = Loan::whereNotNull('loan_date')->get()->count();
        $count_all_books = Book::whereNotNull('copies_owned')->sum('copies_owned');

        $borrowed_books_today = Loan::where('loan_date',date('Y/m/d'))->get()->count();
        $returned_books_today = Loan::where('returned_date',date('Y/m/d'))->get()->count();
        $unreturned_books = Loan::whereNull('returned_date')->get()->count();

        $authors = Author::get()->count();
        $categories = Category::get()->count();


        $penalty_collected_today = FinePayment::where('payment_date',date('Y/m/d'))->sum('payment_amount');
        $penalty_collected_all = FinePayment::get()->sum('payment_amount');
        

        return view('home',[
            'count_books'=>$count_books,
            'count_members_active'=>$count_members_active,
            'count_members_inactive'=>$count_members_inactive,
            'count_borrowed_transactions'=>$count_borrowed_transactions,
            'count_all_books'=>$count_all_books,
            'borrowed_books_today'=>$borrowed_books_today,
            'returned_books_today'=>$returned_books_today,
            'penalty_collected_today'=>$penalty_collected_today,
            'unreturned_books'=>$unreturned_books,
            'penalty_collected_all'=>$penalty_collected_all,
            'authors'=>$authors,
            'categories'=>$categories,
        ]);
    }
}
