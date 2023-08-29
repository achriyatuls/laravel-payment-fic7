<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function order(Request $request){

        $order = Order::create([
            'user_id'=>1,
            'seller_id'=>$request->seller_id,
            'number'=>time(),
            'total_price'=>$request->total_price,
            'payment_status'=>1,
            'delivery_address'=>$request->delivery_address,
            'shipping_cost'=>$request->shipping_cost,
            'courier_name'=>$request->courier_name,
        ]);

    }
}
