<!-- header-section-starts -->
<div class="header">
	<div class="header-top-strip">
		<div class="container">
			<div class="header-top-left">
				<ul>
					<li><a href="{{route('account')}}"><span class="glyphicon glyphicon-user"> </span>ĐĂNG NHẬP</a></li>
					<li><a href="{{route('register')}}"><span class="glyphicon glyphicon-lock"> </span>ĐĂNG KÝ</a></li>			
				</ul>
			</div>
			<div class="header-right">
				<div class="cart box_1">
					<a href="{{route('checkout')}}">
						<h3>{{$total}} VNĐ - 
							@if($count == 0)
								Giỏ trống
							@else
								{{$count}} SP
							@endif
							<img src="source/images/bag.png" alt="">
						</h3>
					</a>	
					<p><a href="{{route('deleteAll')}}" class="simpleCart_empty">Làm rỗng</a></p>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header-section-ends -->

<div class="banner-top">
	<div class="container">
		<nav class="navbar navbar-default " role="navigation">
		    <div class="navbar-header">
		        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
		        </button>
				<div class="logo hidden-xs hidden-sm">
					{{-- <h1><a href="{{route('index')}}"><span>M &amp; A</span> Shop</a></h1> --}}
					<img src="images/rsz_logo1.png">
				</div>
		    </div>
	    	<!--/.navbar-header-->
	
		    <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
		        <ul class="nav navbar-nav">
					<li><a href="{{route('index')}}">TRANG CHỦ</a></li>
					<li class="dropdown">
			            <a href="#" class="dropdown-toggle" data-toggle="dropdown">LOẠI SẢN PHẨM<b class="caret"></b></a>
			            <ul class="dropdown-menu multi-column " style="width: 170px;"> 
							<ul class="multi-column-dropdown">
								@foreach($cate as $cate_type)
									<li style="text-align: center;"><a href="{{route('products', $cate_type->id)}}">{{$cate_type->name}}</a></li>
								@endforeach
							</ul>
			            </ul>
			        </li>
					<li><a href="{{route('contact')}}">LIÊN HỆ</a></li>
		        </ul>
		    </div>
		    <!--/.navbar-collapse-->
		</nav>
		<!--/.navbar-->
	</div>
</div>