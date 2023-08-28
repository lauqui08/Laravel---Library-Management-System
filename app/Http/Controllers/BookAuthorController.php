<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Book;
use App\Models\BookAuthor;
use Illuminate\Http\Request;

class BookAuthorController extends Controller
{
    //

    public function show($id)
    {
        $book = Book::findOrfail($id);
        // dd($book->id);
        $book_author = BookAuthor::where('book_id',$book->id)->get();
        $authors = Author::all();

        if(!$book_author){
            return view('books.show',$id);
        }else{
            // return 'newly created book';
            return redirect(route('books.author.show',$book->id))->with(['book_author'=>$book_author,'authors'=>$authors]);
        }

        // dd($book_author);
    }

    public function destroy(Request $request)
    {
        // dd($request->book_id);
        $author = BookAuthor::where(['book_id'=>$request->book_id,'author_id'=>$request->author_id])->delete();

        return redirect(route('books.edit',$request->book_id))->with('author-message','Successfully removed author.');
    }
}
