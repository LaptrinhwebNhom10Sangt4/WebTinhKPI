$(function(){
	$('#main-menu').slicknav({
		prependTo:'#mobileMenu',
		closeOnClick: true
	});
	$('#menu2').slicknav({
		label: '',
		duration: 1000,
		easingOpen: "easeOutBounce",
		prependTo:'#demo2'
	});
	
	$(document).on('click', "#main-menu .scroll, #demo1 .scroll, .slicknav_menu .scroll", function(e) {
        e.preventDefault();
		var h = $('#nav').outerHeight();
		if (!$('#main-menu').is(":visible")) {
			h = $('.slicknav_menu .slicknav_btn').outerHeight();
		}
		var link = this;
		$.smoothScroll({
			offset: -h,
			scrollTarget: link.hash
		});
	});
});

$(function open_window(url, width, height) {
    var my_window;

    //screen.width = Desktop Width
    //screen.height = Desktop Height

    var center_left = (screen.width / 2) - (width / 2);
    var center_top = (screen.height / 2) - (height / 2);

    my_window = window.open(url, "Title", "scrollbars=0, width=" + width + ", height=" + height + ", left=" + center_left + ", top=" + center_top);
    my_window.focus();
})