<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin;
use Hash;
use Auth;
use App\Http\Requests\AdminRequest;

class AdminController extends Controller
{
    public function getList(){
        $list = Admin::select('*')->get();
        return view('admin.userAdmin.list',compact('list'));
    }

    public function getAdd(){
        return view('admin.userAdmin.add');
    }

    public function postAdd(AdminRequest $req){
        $username = new Admin();
        $username->username = $req->txtUsername;
        $username->password = Hash::make($req->txtPass);
        $username->level = $req->rdoLevel;
        $username->save();
        return redirect()->route('admin.userAdmin.list')->with(['flash_level'=>'success','flash_message'=>'Successfully added userAdmin']);
    }

    public function getDelete($id){
        $user_current_login = Auth::user()->id;
        $username = Admin::find($id);
        if(($id == 1)|| ($user_current_login == $id) || ($user_current_login !=1 && $username->level == 0)){
            return redirect()->route('admin.userAdmin.list')->with(['flash_level'=>'danger','flash_message'=>'You cant delete this Username']);
        }
        else{
    		$username->delete($id);
    		return redirect()->route('admin.userAdmin.list')->with(['flash_level'=>'success','flash_message'=>'Successfully deleted userAdmin']);
    	}
    }

    public function getEdit($id){
        $username = Admin::find($id);
        if (Auth::user()->id != 1 && ($id == 1 || ($username["level"] == 0 || Auth::user()->id != $id ))){
            return redirect()->route('admin.userAdmin.list')->with(['flash_level'=>'danger','flash_message'=>'You cant updated this Username']);
        }
    	return view('admin.userAdmin.edit',compact('username'));
    }

    public function postEdit($id,Request $req){
        $username = Admin::find($id);
    	if($req->input('txtPass')) {
            $this->validate($req,
            [
                'txtRePass' => 'same:txtRePass'
            ],
            [
                'txtRePass.same' => 'Mật khẩu không trùng khớp'
            ]);
            $pass = $req->input('txtPass');
            $username->password = Hash::make($pass);
        }
        $username->level = $req->rdoLevel;
        $username->save();
        return redirect()->route('admin.userAdmin.list')->with(['flash_level'=>'success','flash_message'=>'Successfully updated this Username']);
    }
}
