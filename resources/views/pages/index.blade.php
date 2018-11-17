@extends('master')
@section('content')
<title>M &amp; A Shop</title>
<div class="banner">
	<div class="container">
		<div class="banner-bottom">
				<div  class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
							<div class="banner-info">
								<h3>Chào mừng đến với M&amp;A </h3>
							</div>
						</li>
						<li>
							<div class="banner-info">
							   <h3>Phong cách ăn mặc</h3>
							</div>
						</li>
						<li>
							<div class="banner-info">
							  <h3>Pack your Bag</h3>
							</div>								
						</li>
					</ul>
				</div>
				<!--banner-->
				<script src="js/responsiveslides.min.js"></script>
				<script>
					// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
						$("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
								$('.events').append("<li>before event fired.</li>");
							},
							after: function () {
								$('.events').append("<li>after event fired.</li>");
							}
						});
					});
				</script>
			{{-- </div> --}}
			<div class="clearfix"> </div>
		</div>
		<div class="shop">
			<a href="{{route('products',0)}}">MUA NGAY</a>
		</div>
	</div>
</div>

<div class="container">
	<div class="main-content">
		<div class="online-strip">
			<div class="col-md-4 follow-us">
				<h3>Follow Us : <a class="twitter" href="#"></a><a class="facebook" href="#"></a></h3>
			</div>
			<div class="col-md-4 shipping-grid">
				<div class="shipping">
					<img src="images/shipping.png" alt="" />
				</div>
				<div class="shipping-text">
					<h3>Giao hàng miễn phí</h3>
					<p>Cho đơn hàng trên 200.000 VNĐ</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 online-order">
				<p>Đặt hàng online</p>
				<h3>Mobile: 0909 89 89 89</h3>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="products-grid">
			<header>
				<h3 class="head text-center">Sản phẩm mới nhất</h3>
			</header>
			@foreach($lastest as $lastestItem)
				<div class="col-md-4 product simpleCart_shelfItem text-center">
					 <a href="{{route('single', $lastestItem->id)}}"><img src="{{$lastestItem->image}}" alt="" /></a>  
					<div class="mask">
						<a href="{{route('single', $lastestItem->id)}}">Quick View</a>
					</div>
					<a class="product_name" href="{{route('single', $lastestItem->id)}}">{{$lastestItem->name}}</a>
					<p><a class="item_add" href="{{route('add-to-cart', $lastestItem->id)}}"><i></i> <span class="item_price">{{number_format($lastestItem->price,3)}} VNĐ</span></a></p>
				</div>
			@endforeach
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<div class="other-products">
	<div class="container">
		<h3 class="like text-center">Sản phẩm khuyến mãi</h3>        			
		<ul id="flexiselDemo3">
		@foreach($sale as $saleItem)
			<li><a href="{{route('single', $saleItem->id)}}"><img src="{{$saleItem->image}}" class="img-responsive" alt="" /></a>
				<div class="product liked-product simpleCart_shelfItem">
					<a class="like_name" href="{{route('single', $saleItem->id)}}">{{$saleItem->name}}</a>
					<p><a class="item_add" href="{{route('add-to-cart', $saleItem->id)}}"><i></i> <span class=" item_price">{{number_format($saleItem->promotion,3)}} VNĐ</span></a></p>
				</div>
			</li>
		@endforeach
		</ul>
		<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo3").flexisel({
					visibleItems: 4,
					animationSpeed: 1000,
					autoPlay: true,
					autoPlaySpeed: 3000,    		
					pauseOnHover: true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
						changePoint:480,
						visibleItems: 1
						}, 
						landscape: { 
						changePoint:640,
						visibleItems: 2
						},
						tablet: { 
						changePoint:768,
						visibleItems: 3
						}
					}
				});
			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	</div>
</div>
@endsection