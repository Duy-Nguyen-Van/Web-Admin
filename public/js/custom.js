//Back to Top
$(function() {
	$(window).scroll(function() {
		if ($(this).scrollTop() != 0) {
			$('#toTop').fadeIn();
		} else {
			$('#toTop').fadeOut();
		}
	});
	$('#toTop').click(function() {
		$('footer,html').animate({
			scrollTop: 0
		}, 800);
	});
});
