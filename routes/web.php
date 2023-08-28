<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookAuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\MemberController;
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
