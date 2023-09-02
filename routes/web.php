<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookAuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BorrowController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\PaymentsController;
use App\Http\Controllers\ReturnBookController;
use App\Http\Controllers\TransactionController;
use App\Models\ReturnBook;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('auth')->group(function(){

        Route::get('/',[HomeController::class,'index']);

        //books
        Route::get('/books',[BookController::class,'index'])->name('books.index')->middleware('auth');
        Route::get('/books/create',[BookController::class,'create'])->name('books.create');
        Route::post('/books',[BookController::class,'store'])->name('books.store');
        Route::get('/books/{id}',[BookController::class,'show'])->name('books.show');
        Route::get('/books/{id}/edit',[BookController::class,'edit'])->name('books.edit');
        Route::put('/books/{id}',[BookController::class,'update'])->name('books.update');


        //book_author
        Route::get('/books/{id}/author',[BookAuthorController::class,'show'])->name('books.author.show');
        Route::post('/books/author',[BookAuthorController::class,'store'])->name('books.author.store');
        Route::delete('/authors',[BookAuthorController::class,'destroy'])->name('books.author.destroy');

        //authors
        Route::get('/authors',[AuthorController::class,'index'])->name('authors.index');
        Route::get('/authors/create',[AuthorController::class,'create'])->name('authors.create');
        Route::post('/authors',[AuthorController::class,'store'])->name('authors.store');
        Route::get('/authors/{id}',[AuthorController::class,'show'])->name('authors.show');
        Route::get('/authors/{id}/edit',[AuthorController::class,'edit'])->name('authors.edit');
        Route::put('/authors/{id}',[AuthorController::class,'update'])->name('authors.update');

        //categories
        Route::get('/categories',[CategoryController::class,'index'])->name('categories.index');
        Route::get('/categories/create',[CategoryController::class,'create'])->name('categories.create');
        Route::post('/categories',[CategoryController::class,'store'])->name('categories.store');
        Route::get('/categories/{id}',[CategoryController::class,'show'])->name('categories.show');
        Route::get('/categories/{id}/edit',[CategoryController::class,'edit'])->name('categories.edit');
        Route::put('/categories/{id}',[CategoryController::class,'update'])->name('categories.update');


        //members
        Route::get('/members',[MemberController::class,'index'])->name('members.index');
        Route::get('/members/create',[MemberController::class,'create'])->name('members.create');
        Route::post('/members',[MemberController::class,'store'])->name('members.store');
        Route::get('/members/{id}',[MemberController::class,'show'])->name('members.show');
        Route::get('/members/{id}/edit',[MemberController::class,'edit'])->name('members.edit');
        Route::put('/members/{id}',[MemberController::class,'update'])->name('members.update');

        //Transactions
        Route::get('/transactions',[TransactionController::class,'index'])->name('transactions.index');
        // Route::get('/transactions/create',[TransactionController::class,'create'])->name('transactions.create');
        // Route::post('/transactions',[TransactionController::class,'store'])->name('transactions.store');
        Route::get('/transactions/{id}',[TransactionController::class,'singlePayment'])->name('transactions.singlePayment');
        // Route::get('/transactions/{id}/edit',[TransactionController::class,'edit'])->name('transactions.edit');
        // Route::put('/transactions/{id}',[TransactionController::class,'update'])->name('transactions.update');

        //Trasaction borrow
        Route::get('/borrow',[BorrowController::class,'index'])->name('borrow.index');
        Route::get('/borrow/create',[BorrowController::class,'create'])->name('borrow.create');
        Route::post('/borrow',[BorrowController::class,'store'])->name('borrow.store');
        Route::get('/borrow/{id}',[BorrowController::class,'show'])->name('borrow.show');
        Route::get('/borrow/{id}/checkout-confirmation',[BorrowController::class,'edit'])->name('borrow.edit');

        Route::put('/borow/{id}',[BorrowController::class,'update'])->name('borrow.update');
        Route::delete('/borrow/{id}',[BorrowController::class,'destroy'])->name('borrow.destroy');

        //transaction return book
        Route::get('/return',[ReturnBookController::class,'index'])->name('return.index');
        Route::get('/return/{member_id}/{loan_id}',[ReturnBookController::class,'show'])->name('return.show.single');
        Route::post('/return',[ReturnBookController::class,'store'])->name('return.store');

        //payments transactions
        Route::post('/singelPaymentTransaction',[PaymentsController::class,'singlePaymentTransaction'])->name('singelPaymentTransaction');
        Route::get('/payment/display/{id}',[PaymentsController::class,'show'])->name('payments.display.show');
        Route::post('/multiplePaymentTransaction',[PaymentsController::class,'multiplePayment'])->name('multiplePayment');

});

