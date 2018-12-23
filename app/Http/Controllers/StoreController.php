<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Stores;
use App\StoreImage;
use App\Http\Requests\StoreRequest;
use Illuminate\Support\Facades\Input;
use File;
use App\Http\Requests\Zalo;
use App\Http\Requests\ZaloEndpoint;
use App\Http\Requests\ZaloConfig;
use App\Http\Requests\FileUpload\ZaloFile;
use App\Demo\Demo;

class StoreController extends Controller
{

    protected $zalo;
    //Go to add store page
    public function getAdd(){
    	return view('admin.store.add');
    }

    //Add new store
    public function postAdd(StoreRequest $req){
        $file_name = $req->file('fImages')->getClientOriginalName();
        $item = new Stores;
        $item->name = $req->txtName;
        $item->address = $req->txtAddress;
        $item->image = $file_name;
    	$req->file('fImages')->move('../resources/images', $file_name);
        $item->save();
        return redirect()->route('admin.store.list')->with(['flash_level'=>'success', 'flash_message'=>'Successfully added store']);
    }
    
    //Go to list product page
    public function getList(){
        $listItem = Stores::select('*')->get();
        return view('admin.store.list',compact('listItem'));
    }

    public function getStoreAPIList(){
        $listItem = Stores::select('*')->get();
        return response() -> json([$listItem]);
    }

    //Delete product
    public function getDelete($id){
        $item = Stores::find($id);
        File::delete('../resources/images/'.$item->image);
        $item->delete($id);
        return redirect()->route('admin.store.list')->with(['flash_level'=>'success','flash_message'=>'Successfully deleted store']);
    }

    //Go to edit prodcut page
    public function getEdit($id){
        $item = Stores::find($id);
        return view('admin.store.edit', compact('item'));
    }

    //Edit product
    public function postEdit($id,Request $req){
        $item = Stores::find($id);
        $item->name = $req->txtName;
        $item->address = $req->txtCategory;
        $img_current ='../resources/images/'.$req->img_crurent;
        if(!empty($req->file('fImages'))) {
            $file_name = $req->file('fImages')->getClientOriginalName();
     		$item->image = $file_name;
     		$req->file('fImages')->move('../resources/images',$file_name);
     		if(File::exists($img_current)){
     			File::delete($img_current);
     		}
     	}
     	else{
     		echo "Không có file";
     	}
        $item->save();
        return redirect()->route('admin.store.list')->with(['flash_level'=>'success','flash_message'=>'Successfully updated store']);
    }

    //upload product images
    // public function UploadProductImages()
    // {
    //     $zalo = new Zalo(ZaloConfig::getInstance()->getConfig());
    //     $filePath = 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/28/635869123783238651_iphone-5s-5.jpg';
    //     $params = ['file' => new ZaloFile($filePath)];
    //     $response = $zalo->post(ZaloEndpoint::API_OA_STORE_UPLOAD_PRODUCT_PHOTO, $params);
    //     $result = $response->getDecodedBody(); // result
    //     print_r($result);
    // }
    

    // Tạo cửa hàng
    public function CreateStores($id)
    {
        // $zalo = new Zalo(ZaloConfig::getInstance()->getConfig());
        // $item = Products::find($id);
        // // $cate = array('cateid' => 'put_your_cate_id_here');
        // // $cates = [$cate];
        // // $photo = array('id' => '99a72e1f65598c07d548');
        // // $photos = [$photo];
        // $data = array(
        //     // 'cateids' => $cates,
        //     'name' => $item->name,
        //     'desc' => $item->description,
        //     'code' => '0003',
        //     'price' => $item->price,
        //     // 'photos' => $photos,
        //     'display' => 'show', // show | hide
        //     'payment' => 2 // 2 - enable | 3 - disable
        // );
        // $params = ['data' => $data];
        // $response = $zalo->post(ZaloEndpoint::API_OA_STORE_CREATE_PRODUCT, $params);
        // $result = $response->getDecodedBody(); // result
        return redirect()->route('admin.store.list')->with(['flash_level'=>'success', 'flash_message'=>'Successfully uploaded store']);
        
    }


    // public function CreateProducts()
    // {
    //     $zalo = new Demo();
    //     $zalo->print();
    // }
}
