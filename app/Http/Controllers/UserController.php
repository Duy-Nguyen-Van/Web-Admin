<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\UserRequest;
use Hash;

class UserController extends Controller
{
    public function getList(){
        $User = User::select('*')->get();
        return view('admin.user.list',compact('User'));
    }

    public function getUserAPIList(){
        $User = User::select('*')->get();
        return response() -> json([$User]);
    }

    public function getAdd(){
        return view('admin.user.add');
    }

    public function postAdd(UserRequest $req){
        $user = new User();
        $user->email = $req->txtEmail;
        $user->password = Hash::make($req->txtPass);
        $user->name = $req->txtName;
        $user->gender = $req->txtGender;
        $user->address = $req->txtAddress;
        $user->phone = $req->txtPhoneNumber;
        $user->save();
        return redirect()->route('admin.user.list')->with(['flash_level'=>'success','flash_message'=>'Successfully added user']);
    }

    public function getDelete($id){
        $user = User::find($id);
        $user->delete($id);
        return redirect()->route('admin.user.list')->with(['flash_level'=>'success','flash_message'=>'Successfully deleted user']);

    }

    public function getUserAPIDelete($id){
        $user = User::find($id);
        $user->delete($id);
        return response() -> json([$user]);
    }

    public function getEdit(){
        return view('admin.user.edit');
    }
}
