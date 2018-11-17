@extends('master')
@section('content')
<title>Đăng ký</title>
<div class="registration-form">
	<div class="container">
		<div class="dreamcrub">
			<ul class="breadcrumbs">
				<li class="home">
					<a href="index.html" title="Go to Home Page">TRANG CHỦ</a>&nbsp;
					<span>&gt;</span>
				</li>
				<li class="women">ĐĂNG KÍ</li>
			</ul>
			<ul class="previous">
				<li><a href="{{redirect()->getUrlGenerator()->previous()}}">QUAY LẠI</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		
		<div class="registration-grids">
			<div class="reg-form">
				<div class="reg">
					<h2>ĐĂNG KÍ</h2>
					<form method="POST">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">				
						<div class="col-lg-12">
						@include('admin.blocks.error')
                    	</div>
						<ul>
							<li class="text-info">Họ và tên </li>
							<li><input type="text" name="txtName" value="" placeholder="Vui lòng nhập họ và tên"></li>
						</ul>
						<ul>
							<li class="text-info">Email: </li>
							<li><input type="text" name="txtEmail" value="" placeholder="Vui lòng nhập email"></li>
						</ul>
						<ul>
							<li class="text-info">Mật khẩu: </li>
							<li><input type="password" name="txtPassword" value="" placeholder="Vui lòng nhập mật khẩu"></li>
						</ul>
						<ul>
							<li class="text-info">Nhập lại mật khẩu:</li>
							<li><input type="password" name="txtRePassword" value="" placeholder="Vui lòng nhập lại mật khẩu"></li>
						</ul>
						<p class="click">*Tôi đã đọc và đồng ý với <a href="#">chính sách </a> của M &amp; A Shop</p>
						<br> 			
						<input type="submit" value="ĐĂNG KÝ">
						@if(Session::has('flash_message'))
                             <div class="alert alert-{{Session::get('flash_level')}}">
                                 {{ Session::get('flash_message')}}
                            </div>
						@endif
					</form>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
@endsection