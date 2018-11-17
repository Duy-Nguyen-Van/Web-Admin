@extends('master')
@section('content')
<title>Liên hệ</title>
<div class="contact">
	<div class="container">
		<div class="dreamcrub">
			<ul class="breadcrumbs">
				<li class="home">
					<a href="index.html" title="Go to Home Page">TRANG CHỦ</a>&nbsp;
					<span>&gt;</span>
				</li>
				<li class="women">LIÊN HỆ</li>
			</ul>
			<ul class="previous">
				<li><a href="{{redirect()->getUrlGenerator()->previous()}}">QUAY LẠI</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="contact-info">
			<h2>LIÊN HỆ CHÚNG TÔI TẠI ĐÂY</h2>
		</div>
		<div class="contact-map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15672.854527397385!2d106.80203855633897!3d10.87134970217915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xafa66f9c8be3c91!2sUniversity+of+Information+Technology+VNU-HCM!5e0!3m2!1sen!2s!4v1515900507031" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			{{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6632.248000703498!2d151.265683!3d-33.7832959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12abc7edcbeb07%3A0x5017d681632bfc0!2sManly+Vale+NSW+2093%2C+Australia!5e0!3m2!1sen!2sin!4v1433329298259" style="border:0"></iframe> --}}
		</div>
		<div class="contact-form">
			<div class="contact-info">
				<h3>FORM LIÊN HỆ</h3>
			</div>
			<form>
				<div class="contact-left">
					<input type="text" placeholder="Name" required>
					<input type="text" placeholder="E-mail" required>
					<input type="text" placeholder="Subject" required>
				</div>
				<div class="contact-right">
					<textarea placeholder="Message" required></textarea>
				</div>
				<div class="clearfix"></div>
				<input type="submit" value="SUBMIT">
			</form>
		</div>
	</div>
</div>
@endsection