<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type_products;
use App\Products;
use App\Http\Requests\CateRequest;

class CateController extends Controller
{
    public function getAdd(){
        return view('admin.cate.add');
    }

    public function postAdd(Request $req){
        $item = new Type_products();
        $item->name = $req->txtCateName;
        $item->save();
        return redirect()->route('admin.cate.list')->with(['flash_level'=>'success','flash_message'=>'Successfully added cate product']);
    }

    public function getList(){
        $listItem = Type_products::select('*')->get();
        return view('admin.cate.list',compact('listItem'));
    }

    public function getDelete($id){
        $countitem = Products::where('id_type',$id)->count();
        if($countitem  == 0){ 
            $cate = Type_products::find($id);
            $cate->delete($id);
            return redirect()->route('admin.cate.list')->with(['flash_level'=>'success','flash_message'=>'Successfully deleted cate product']);
        }
        else{
            echo "<script type='text/javascript'>
                alert('You cant delete this CateProduct');
                window.location = '";
                    echo route('admin.cate.list');
            echo"'
            </script>";
        }    
    }

    public function getEdit($id){
        $item = Type_products::find($id);
        return view('admin.cate.edit', compact('item'));
    }

    public function postEdit($id, Request $req){
        $item = Type_products::find($id);
        $item->name = $req->txtCateName;
        $item->save();
        return redirect()->route('admin.cate.list')->with(['flash_level'=>'success','flash_message'=>'Successfully updated cate product']);
    }
}
