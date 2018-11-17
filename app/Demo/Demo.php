<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Demo extends Model
{
    //Connect to table products
   public function print(){
   		echo 'hello';
   }
    
}