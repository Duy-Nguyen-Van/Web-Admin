@extends('master')
@section('content')
<title>Sản phẩm</title>
<div class="container">
	<div class="products-page">
		<div class="new-product">
			<div class="new-product-top">
				<ul class="product-top-list">
					<li><a href="{{route('index')}}">TRANG CHỦ</a>&nbsp;<span>&gt;</span></li>
					<li><span class="act">SẢN PHẨM</span>&nbsp;</li>
				</ul>
				<p class="back"><a href="{{redirect()->getUrlGenerator()->previous()}}">QUAY LẠI</a></p>
				<div class="clearfix"></div>
			</div>
			<div class="mens-toolbar">
				<div class="sort">
					<div class="sort-by">
						<label>SẮP XẾP</label>
						<select>
							<option value="">Theo Tên</option>
							<option value="">Theo Giá</option>
						</select>
					</div>
				</div>
				<div class="clearfix"></div>		
			</div>
			<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
				<ul>
					@foreach($cate_product as $item)
					<li>
						<a class="cbp-vm-image" href="{{route('single',$item->id)}}">
							<!-- <div class="simpleCart_shelfItem"> -->
							<div class="view view-first">
								<div class="inner_content clearfix">
									<div class="product_image">
										<img src="{{$item->image}}" class="img-responsive" alt=""/>
										<div class="mask">
											<div class="info">Quick View</div>
										</div>
										<div class="product_container">
											<div class="cart-left">
												<p class="title">{{$item->name}}</p>
											</div>
											<div class="pricey"><span class="item_price">
												@if($item->promotion == 0)
													{{number_format($item->price,3)}} VNĐ
												@else
													<div><del>{{number_format($item->price,3)}}</del> 
														<span>{{number_format($item->promotion,3)}}</span> VNĐ
													</div>		
												@endif
											</span></div>
											<div class="clearfix"></div>
										</div>		
									</div>
								</div>
							</div>
						</a>
						<!-- <div class="cbp-vm-details">
							Silver beet shallot wakame tomatillo salsify mung bean beetroot groundnut.
						</div> -->
						<a class="cbp-vm-icon cbp-vm-add item_add" href="{{route('add-to-cart', $item->id)}}">Thêm vào giỏ hàng</a>
					</li>
					@endforeach
				</ul>
			</div>
			<div style="margin-left:40%; margin-top:15px;">
				{{$cate_product->links()}}
			</div>
			<script src="js/cbpViewModeSwitch.js" type="text/javascript"></script>
			<script src="js/classie.js" type="text/javascript"></script>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
</div>
<!-- content-section-ends -->

<div class="other-products">
	<div class="container">
	<h3 class="like text-center">Sale Products</h3>        			
	<ul id="flexiselDemo3">
	@foreach($sale as $saleItem)
		<li><a href="{{route('single', $saleItem->id)}}"><img src="{{$saleItem->image}}" class="img-responsive" alt="" /></a>
			<div class="product liked-product simpleCart_shelfItem">
				<a class="like_name" href="{{route('single', $saleItem->id)}}">{{$saleItem->name}}</a>
				<p><a class="item_add" href="#"><i></i> <span class=" item_price">{{number_format($saleItem->promotion,3)}}</span></a></p>
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