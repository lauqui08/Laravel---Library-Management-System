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
        $authors = Author::get();

        if(!$book_author){
            return view('books.show',$id);
        }else{
            // return 'newly created book';
            return redirect(route('books.author.show',$book->id))->with(['book_author'=>$book_author,'authors'=>$authors]);
        }

        // dd($book_author);
    }

    public function store(Request $request)
    {
        // dd($request->author_id);
        $check_author = BookAuthor::where(['book_id'=>$request->book_id,'author_id'=>$request->author_id])->get();



        if(isset($request->new_book)){

            if(count($check_author) == 1){
                return redirect(route('books.show',$request->book_id))->with(['author-message'=>'Author is already in list.','success'=>false]);
            }else{
                BookAuthor::create([
                    'book_id'=>$request->book_id,
                    'author_id'=>$request->author_id,
                ]);
                return redirect(route('books.show',$request->book_id))->with(['author-message'=>'Successfully added author.','success'=>true]);
            }

        }else{

            // dd(count($check_author)); 

            if(count($check_author) == 1){
                return redirect(route('books.edit',$request->book_id))->with(['author-message'=>'Author is already in list.','success'=>false]);
            }else{
                BookAuthor::create([
                    'book_id'=>$request->book_id,
                    'author_id'=>$request->author_id,
                ]);
                return redirect(route('books.edit',$request->book_id))->with(['author-message'=>'Successfully added author.','success'=>true]);
            }
            
        }

    }

    public function destroy(Request $request)
    {
        // dd($request->book_id);
        $author = BookAuthor::where(['book_id'=>$request->book_id,'author_id'=>$request->author_id])->delete();

        return redirect(route('books.edit',$request->book_id))->with('author-message','Successfully removed author.');
    }
}
