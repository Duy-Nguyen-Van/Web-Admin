<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stores extends Model
{
    //Connect to table products
    protected $table = 'stores';

    //Set relationship between table type_products and table products
    // public function type_products() {
    // 	return $this->belongTo('App\Type_products', 'id_type', 'id');
    // }
}
