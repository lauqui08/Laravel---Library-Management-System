<?php

namespace App\Http\Controllers;

use App\Http\Requests\AuthorRequest;
use App\Models\Author;
use App\Models\Book;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    //

    public function index(Request $request)
    {
        $authors=Author::where('author.last_name','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('author.first_name','LIKE','%'. $request->query('searchBook').'%')
        ->paginate('10');
        // dd($authors);

        return view('books.book_author.index',['authors'=>$authors]);
    }

    public function show($id)
    {
        $author = Author::findOrfail($id);
        $author_books = Book::join('book_author','book.id','=','book_author.author_id')
        ->where('book_author.book_id',$id)
        ->paginate('10');

        // dd($author_books);

        return view('books.book_author.show',['author'=>$author,'books'=>$author_books]);
    }

    public function edit($id)
    {
        $author = Author::findOrfail($id);
        return view('books.book_author.edit',['author'=>$author]);
    }

    public function update(Request $request, $id)
    {
        $author = Author::findOrfail($id)->update([
            'first_name'=>$request->first_name,
            'last_name'=>$request->last_name,
        ]);

        return redirect(route('authors.edit',$id))->with(['author'=>$author,'message'=>'Successfully updated.']);
    }

    public function create()
    {
        return view('books.book_author.create');
    }

    public function store(AuthorRequest $request)
    {
        $check_author_info = Author::where([
            ['first_name',$request->first_name],
            ['last_name',$request->last_name],
        ])->get();
        // dd(count($check_author_info));
        if(count($check_author_info) == 0){
            Author::insert([
                'id'=>$request->id_number,
                'first_name'=>$request->first_name,
                'last_name'=>$request->last_name,
            ]);

            return redirect(route('authors.create'))->with(['message'=>'Successfully added new Author.','success'=>true]);
        }else{
            return redirect(route('authors.create'))->with(['message'=>'Failed Author is already on the list.','success'=>false]);
        }

    }

    
}
