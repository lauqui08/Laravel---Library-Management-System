<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Book;
use App\Models\BookAuthor;
use App\Models\Category;
use Faker\Provider\Lorem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    //

    public function index()
    {
        $books = Book::paginate('15');
        // dd($books);

        return view('books.index',['books'=>$books]);
    }

    public function create()
    {
        $categories = Category::all();

        return view('books.create',['categories'=>$categories]);
    }

    public function store(Request $request)
    {
        $book = Book::create([
            'id'=>$request->book_id,
            'isbn'=>$request->isbn,
            'title'=>$request->title,
            'category_id'=>$request->category_id,
            'publication_date'=>$request->publication_date,
            'book_description'=>$request->description,
            'copies_owned'=>$request->copies_owned
        ]);


        return redirect(route('books.show',$request->book_id));
    }

    public function show($id)
    {
        $book = Book::findOrfail($id);
        $all_authors = Author::all();
        $book_author = BookAuthor::where('book_id',$book->id)->get();
        // $category = Category::where('id',$book->category_id)->get();
        $category = Category::findOrFail($book->category_id);

        // dd($book_author[0]->book_id);
        // dd(route('books.show',$id));
        if($book_author){
            // $authors = Author::all()->where('id',$book_author[0]->book_id);
            $authors = DB::table('author')
            ->join('book_author','author.id','=','book_author.author_id')
            ->join('book','book_author.book_id','=','book.id')
            ->where('book_author.book_id',$id)
            ->select('author.*')
            ->get();
            // dd($authors);
            return view('books.show',['book'=>$book,'authors'=>$authors])->with(['message'=>'Successfully added new book.','all_authors'=>$all_authors,'category'=>$category]);
        }
        // else{
        //     $authors = Author::all();
        //     return redirect(route('books.author.show',$book->id))->with(['book_author'=>$book_author,'authors'=>$authors]);
        // }

        // dd($book_author);

    }

    public function edit($id)
    {
        $book = Book::findOrfail($id);
        $all_authors = Author::all();
        $categories = Category::all();
        // dd($book->id);
        $book_author = BookAuthor::where('book_id',$book->id)->get();
        // dd($book_author[0]->book_id);
        // dd(route('books.show',$id));
            // $authors = Author::all()->where('id',$book_author[0]->book_id);

            $authors = DB::table('author')
            ->join('book_author','author.id','=','book_author.author_id')
            ->join('book','book_author.book_id','=','book.id')
            ->where('book_author.book_id',$id)
            ->select('author.*')
            ->get();
            // dd($authors);
            return view('books.edit',['book'=>$book,'authors'=>$authors,'all_authors'=>$all_authors,'categories'=>$categories]);
        
    }

    public function update(Request $request,$id)
    {
        Book::where('id',$id)->update([
            'id'=>$request->book_id,
            'isbn'=>$request->isbn,
            'title'=>$request->title,
            'category_id'=>$request->category_id,
            'publication_date'=>$request->publication_date,
            'book_description'=>$request->description,
            'copies_owned'=>$request->copies_owned
        ]);

        $book = Book::findOrfail($id);
        $all_authors = Author::all();
        $categories = Category::all();
        // dd($book->id);
        $book_author = BookAuthor::where('book_id',$book->id)->get();
        // dd($book_author[0]->book_id);
        // dd(route('books.show',$id));
            // $authors = Author::all()->where('id',$book_author[0]->book_id);

            $authors = DB::table('author')
            ->join('book_author','author.id','=','book_author.author_id')
            ->join('book','book_author.book_id','=','book.id')
            ->where('book_author.book_id',$id)
            ->select('author.*')
            ->get();
            // dd($authors);
            return redirect(route('books.edit',$id))->with(['book'=>$book,'authors'=>$authors,'all_authors'=>$all_authors,'categories'=>$categories,'message'=>'Successfully updated.']);


    }


    

}

