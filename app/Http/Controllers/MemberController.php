<?php

namespace App\Http\Controllers;

use App\Http\Requests\MemberRequest;
use App\Models\Member;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    //
    public function index()
    {
        $members = Member::paginate('15');

        return view('members.index',['members'=>$members]);
    }

    public function create()
    {
        return view('members.create');
    }

    public function store(MemberRequest $request)
    {

            $check_id = is_null($request->active_status_id) ? 2 : 1;
            // dd($check_id);
            $member = Member::create([
                'id'=>$request->id,
                'first_name'=>$request->first_name,
                'last_name'=>$request->last_name,
                'gender'=>$request->gender,
                'email'=>$request->email,
                'contact'=>$request->contact,
                'member_address'=>$request->member_address,
                'joined_date'=>$request->joined_date,
                'active_status_id'=>$check_id,
            ]);


                return redirect(route('members.create'))->with('message','Successfully saved new member');
       
    }

    public function show($id)
    {

    }

    public function edit($id)
    {

    }
}
