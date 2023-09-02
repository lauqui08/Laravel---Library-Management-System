<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    
    public function index(Request $request)
    {
        $categories=Category::where('category.id','LIKE','%'. $request->query('searchBook').'%')
        ->orWhere('category.category_name','LIKE','%'. $request->query('searchBook').'%')
        ->paginate('10');
        // dd($authors);

        return view('books.categories.index',['categories'=>$categories]);
    }

    public function show($id)
    {
        $category = Category::findOrfail($id);
       
        // dd($author_books);

        return view('books.categories.show',['category'=>$category]);
    }

    public function edit($id)
    {
        $category = Category::findOrfail($id);
        return view('books.categories.edit',['category'=>$category]);
    }

    public function update(Request $request, $id)
    {
        $category = Category::findOrfail($id)->update([
            'category_name'=>$request->category_name,
        ]);

        return redirect(route('categories.edit',$id))->with(['category'=>$category,'message'=>'Successfully updated.']);
    }

    public function create()
    {
        return view('books.categories.create');
    }

    public function store(CategoryRequest $request)
    {
        
            Category::insert([
                'id'=>$request->id_number,
                'category_name'=>$request->category_name,
            ]);

            return redirect(route('categories.create'))->with(['message'=>'Successfully added new Category.','success'=>true]);
        
    }

}
