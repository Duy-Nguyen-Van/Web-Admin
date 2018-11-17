<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="images/favicon.ico">
@section('content')
<base href="{{asset('')}}">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>

<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->

<!-- information -->
<link rel="stylesheet" href="css/custom.css">
<!-- information -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> 
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); }, false); 
		function hideURLbar(){ window.scrollTo(0,1); 
	} 
</script>

<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->

<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->

<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
</head>

<body>
	<!-- header-section-starts -->
	@include('header')
	<!-- header-section-ends -->

	<!-- content-section-starts-here -->
	@yield('content')
	<!-- content-section-ends-here -->

	<!-- footer-section-starts -->
	@include('footer')
	<!-- footer-section-ends -->	
</body>
</html>