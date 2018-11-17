@extends('master')
@section('content')
<title>Giỏ hàng</title>
<!-- checkout -->
<div class="cart-items">
	<div class="container">
		<div class="dreamcrub">
			<ul class="breadcrumbs">
				<li class="home">
					<a href="{{route('index')}}" title="Go to Home Page">TRANG CHỦ</a>&nbsp;
					<span>&gt;</span>
				</li>
				<li class="women">
					GIỎ HÀNG
				</li>
			</ul>
			<ul class="previous">
				<li><a href="{{redirect()->getUrlGenerator()->previous()}}">QUAY LẠI</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<h2>GIỎ HÀNG</h2>
		<div class="cart-gd">
			<script>$(document).ready(function(c) {
				$('.close1').on('click', function(c){
					$('.cart-header').fadeOut('slow', function(c){
						$('.cart-header').remove();
					});
				});	  
			});
		</script>
		@foreach($content as $cart_detail)
		<div class="cart-header">
		<a href="{{route('delete',['id'=>$cart_detail->rowId])}}"><div class="close1"></div></a>
			<div class="cart-sec simpleCart_shelfItem">
				<div class="cart-item cyc">
					<img src="{{$cart_detail->options->img}}" class="img-responsive" alt="">
				</div>			
				<div class="cart-item-info">
					<h3>{{$cart_detail->name}}</h3>
					<ul class="qty">
						<li><p>Giá: {{number_format($cart_detail->price,3)}} VNĐ</p></li>
						<li><p>Số lượng</p></li><li><input class="form-control text-center" id="qty" value="{{$cart_detail->qty}}" type="number"></li>
						<a class="updatecart" id="{{$cart_detail->rowId}}">
							<button>Cập nhật</button>
						</a>
					</ul>
					<div class="delivery">				
						<p>Thành tiền : {{number_format($cart_detail->qty*$cart_detail->price,3)}} VNĐ</p>
						<div class="clearfix"></div>
					</div>	
				</div>			
				<div class="clearfix"></div>
			</div>		
		</div>
		@endforeach
		<hr>
		<div class="delivery" style="margin-left: 24%">				
			<p>Tổng tiền : {{number_format($total,3)}} VND</p>
			<div class="clearfix"></div>
		</div>	
		<div class="clearfix"></div>
		<div class="col-md-3 col-md-offset-3" style="margin-top: 20px;">
			<a href="{{route('products',0)}}" class="btn btn-warning">Tiếp tục mua hàng</a>
		</div>
 		<div class="col-md-3 col-md-offset-3" style="margin-top: 20px;">
			<a href="{{route('information')}}" class="btn btn-success">Đặt hàng</a>
 		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	$(".updatecart").click(function(){
		// alert(111);

		var rowid = $(this).attr('id');
		// alert(rowid);
		var qty = $(this).parent().parent().find("#qty").val();
		// alert(qty);
		var token = $("input[name='_token']").val();
		// alert(token);
		 
		$.ajax({
		 	// url:'cap-nhat/'+rowid+'/'+qty,
		 	url:'update/'+rowid+'/'+qty,
		 	type:'GET',
			cache:false,
			data:{"_token":token,"id":rowid,"qty":qty},
			success:function (data){
				
		 		if(data == "oke"){
					window.location = "checkout"
		 		}
		 	}
		 });
	});
}); 

</script>
<!-- //checkout -->	
@endsection