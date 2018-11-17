<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bills;
use App\Bill_detail;

class BillController extends Controller
{
    public function getBill(){
        $bill = Bills::All();
        return view('admin.bill.showBill',compact('bill'));
    }

    public function getBillDetail($id){
        $bill_detail = Bill_detail::where('id_bill',$id)->orderBy('id','DESC')->get();
        $bill = Bill_detail::find($id);
        return view('admin.bill.showDetail',compact('bill_detail'));
    }

    public function getCheck($id){
        $bill = Bills::find($id);
        if(!is_null($bill)){
            $bill->checkout=1;
            $bill->save();
            return redirect(route('admin.bill.showBill', compact('bill')))->with('thanhcong','Xác nhận đã thanh toán');
        }
        else {
            return redirect(route('admin.bill.showBill', compact('bill')))->with('thatbai','Chưa thể thanh toán');
        }
    }
}
