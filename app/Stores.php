<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stores extends Model
{
    //Connect to table products
    protected $table = 'stores';

    // Set relationship between table store and table products
     public function product() {
        return $this->hasMany('App\Products', 'id_store', 'id');
    }
}
