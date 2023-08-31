<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookAuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BorrowController;
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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//books
Route::get('/books',[BookController::class,'index'])->name('books.index');
Route::get('/books/create',[BookController::class,'create'])->name('books.create');
Route::post('/books',[BookController::class,'store'])->name('books.store');
Route::get('/books/{id}',[BookController::class,'show'])->name('books.show');
Route::get('/books/{id}/edit',[BookController::class,'edit'])->name('books.edit');
Route::put('/books/{id}',[BookController::class,'update'])->name('books.update');


//book_author
Route::get('/books/{id}/author',[BookAuthorController::class,'show'])->name('books.author.show');
Route::post('/books/author',[BookAuthorController::class,'store'])->name('books.author.store');
Route::delete('/authors',[BookAuthorController::class,'destroy'])->name('books.author.destroy');


//members
Route::get('/members',[MemberController::class,'index'])->name('members.index');
Route::get('/members/create',[MemberController::class,'create'])->name('members.create');
Route::post('/members',[MemberController::class,'store'])->name('members.store');
Route::get('/members/{id}',[MemberController::class,'show'])->name('members.show');
Route::get('/members/{id}/edit',[MemberController::class,'edit'])->name('members.edit');
Route::put('/members/{id}',[MemberController::class,'update'])->name('members.update');

//Transactions
Route::get('/transactions',[TransactionController::class,'index'])->name('transactions.index');
Route::get('/transactions/create',[TransactionController::class,'create'])->name('transactions.create');
Route::post('/transactions',[TransactionController::class,'store'])->name('transactions.store');
Route::get('/transactions/{id}',[TransactionController::class,'show'])->name('transactions.show');
Route::get('/transactions/{id}/edit',[TransactionController::class,'edit'])->name('transactions.edit');
Route::put('/transactions/{id}',[TransactionController::class,'update'])->name('transactions.update');

//Trasaction borrow
Route::get('/borrow',[BorrowController::class,'index'])->name('borrow.index');
Route::get('/borrow/create',[BorrowController::class,'create'])->name('borrow.create');
Route::post('/borrow',[BorrowController::class,'store'])->name('borrow.store');
Route::get('/borrow/{id}',[BorrowController::class,'show'])->name('borrow.show');
Route::get('/borrow/{id}/checkout-confirmation',[BorrowController::class,'edit'])->name('borrow.edit');

Route::put('/borow/{id}',[BorrowController::class,'update'])->name('borrow.update');
Route::delete('/borrow/{id}',[BorrowController::class,'destroy'])->name('borrow.destroy');

//transaction return book
Route::get('/return/{member_id}/{loan_id}',[ReturnBookController::class,'show'])->name('return.show.single');
Route::post('/return',[ReturnBookController::class,'store'])->name('return.store');

//payments
Route::get('/payments/{$id}',[PaymentsController::class,'show'])->name('payments.show');
Route::get('/payments',[PaymentsController::class,'index'])->name('payments.index');


