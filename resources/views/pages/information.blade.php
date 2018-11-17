@extends('master')
@section('content')
<div class="cart-items">
	<div class="container">
		<div class="dreamcrub">
			<ul class="breadcrumbs">
				<li class="home">
					<a href="{{route('index')}}" title="Go to Home Page">TRANG CHỦ</a>&nbsp;
					<span>&gt;</span>
				</li>
				<li class="home">GIỎ HÀNG &nbsp;&gt;</li>
				<li class="women">ĐẶT HÀNG</li>
			</ul>
			<ul class="previous">
				<li><a href="{{route('checkout')}}">QUAY LẠI</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<h2>THÔNG TIN ĐẶT HÀNG</h2><br>
		<!-- <div class="cart-gd2"> -->
			<div class="container">
				<div id="content-form">
					<form class="form-horizontal" action="{{route('payment')}}" method="post">
					<input type="hidden" name="_token" value="{{csrf_token()}}">
					<!-- <div class="alert alert-success">
			  	  	@if(Session::has('thongbao'))
			  	  		{{Session::get('thongbao')}}
						@endif
					</div> -->
						<div class="row-form">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<h5 class="h9"><b>Thông tin của bạn</b></h5>
								<!-- <hr  width="100%" align="left" color="blue"/> -->
								<!-- <div class="edit-form"> -->
									<div class="form-block">  <!--cân chỉnh tỉ lệ bootstrap.css-->
										<label for="txtName">Tên</label>
										<input type="text" class="form-control" name="txtName" id="txtName" placeholder="Họ và tên">	
									</div>

									<div class="form-block">
										<label for="txtPhone">Điện thoại di động</label>
										<input type="text" class="form-control" name="txtPhone" id="txtPhone" placeholder="Nhập số điện thoại">
									</div>

									<div class="form-block">
										<label for="txtEmail">Email</label>
										<input type="text" class="form-control" name="txtEmail" id="txtEmail" placeholder="Vui lòng nhập email của bạn">
									</div>

									<div class="form-block">
										<label for="txtAddress">Địa chỉ nhận hàng</label>
										<input type="text" class="form-control" name="txtAddress" id="txtAddress" placeholder="Nhập địa chỉ nhận hàng">
									</div>

									<div class="form-block">
										<label for="txtNote">Ghi chú</label>
										<input type="text" class="form-control" name="txtNote" id="txtNote" placeholder="Ghi chú (nếu có)">
									</div><br>
								<!-- </div> -->
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="your-order">
									<div class="your-order-head"><h5><b>Đơn hàng của bạn</b></h5></div>
									<div class="your-order-body" style="padding: 0px 10px">
										<div class="your-order-item">
											<div>
												@foreach($content as $cart_detail)
												<!--  one item	-->
												<div class="media">
													<img width="25%" src="{{$cart_detail->options->img}}" alt="" class="pull-left"> 
													<div class="media-body">
														<p class="font-large">{{$cart_detail->name}}</p>
														<!-- <span class="color-gray your-order-info">Size: M</span><br> -->
														<span class="color-gray your-order-info">Qty: {{$cart_detail->qty}}</span><br>
														<span class="color-gray your-order-info">Price: {{number_format($cart_detail->qty*$cart_detail->price,3)}} VNĐ</span><br>
													</div>
												</div>
												<!-- end one item -->
												@endforeach
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="your-order-head"><h5><b>Hình thức thanh toán</b></h5></div>
									<div class="your-order-body">
										<div class="pull-left"><p class="your-order-f18">Tổng tiền: {{number_format($total,3)}} VNĐ</p></div>
										<div class="clearfix"></div>
									</div>
					
									<input class="text-center" style="margin-top: 12px;" type="submit" value="Đặt hàng">
								</div> <!-- .your-order -->
							</div>
						</div>
					</form>
				</div> <!-- #content -->
			</div> <!-- .container -->
		</div>
	</div>
</div>
@endsection