@extends('master')
@section('content')
<div class="container">
   <div class="products-page">
		<div class="new-product">
			@foreach($detail as $detail_pro)
			<div class="col-md-5 zoom-grid">
				<div class="flexslider">
					<ul class="slides">
						<li data-thumb="{{$detail_pro->image}}">
							<div class="thumb-image"> <img src="{{$detail_pro->image}}" data-imagezoom="true" class="img-responsive" alt="" /> </div>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-7 dress-info">
				<div class="dress-name">
					<h3>{{$detail_pro->name}}</h3>
					<div class="clearfix"></div>
				</div>
				<div class="span span1">
					<p class="left">GIÁ:</p>
					<p class="right">
					@if($detail_pro->promotion < $detail_pro->price)
						{{number_format($detail_pro->promotion,3)}}
						@else
						{{number_format($detail_pro->price,3)}}
						@endif
					VNĐ</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span1">
					<p class="left">XUẤT XỨ:</p>
					<p class="right">Việt Nam</p>
					<div class="clearfix"></div>
				</div>
				<!-- <div class="span span1">
					<p class="left">SIZE</p>
					<p class="right"><span class="selection-box"><select class="domains valid" name="domains">
						<option>S</option>
						<option>M</option>
						<option>L</option>
						<option>XL</option>
					</select></span></p>
					<div class="clearfix"></div>
				</div> -->
				<div class="purchase">
					<a href="{{route('add-to-cart',$detail_pro->id)}}">ĐẶT HÀNG</a>
					<div class="social-icons">
						<ul>
							<li><a class="facebook1" href="#"></a></li>
							<li><a class="twitter1" href="#"></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<script src="js/imagezoom.js"></script>
				<!-- FlexSlider -->
				<script defer src="js/jquery.flexslider.js"></script>
				<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						});
					});
				</script>
			</div>
			@endforeach
		</div>
		<div class="clearfix"></div>									
	</div>
</div>
@endsection