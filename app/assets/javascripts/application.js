// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.transit.min
//= require jquery.visible
//= require twitter/bootstrap
//= require turbolinks

$(document).ready(function(){
	$("[id^=title-item]").each(function(i,obj) {
		$("#title-item-"+i).transition({ opacity:1, y:'-50px', delay:((i*2000) + 2000)}).transition({ opacity:0, scale:0.2, 
  rotateY: '180deg', delay:(1000)});
	});
	$("#last-title-item").transition({ opacity:1, y:'-50px', delay:(8000)});
});


$(document).ready(function(){
	$(window).scroll(function(){
		if($("#static-toolbar").visible(true) == true && $(".dynamic-toolbar").css('opacity') == 0.85) { 
			$(".dynamic-toolbar").transition({y:'-150px', opacity:0, delay:50 }, 50, 'ease');
			$(".dynamic-links li a").transition({opacity: 0, scale:2.2, delay:75});
			$(".dynamic-brand ").transition({x: -350, opacity: 0, delay:100}, 50, 'snap');
		}
		if($("#static-toolbar").visible(true) == false && $(".dynamic-toolbar").css('opacity') == 0) { 
			$(".dynamic-toolbar").transition({y: '150px', opacity:0.85, delay:50 }, 50, 'ease');
			$(".dynamic-links li a").transition({scale: 1, opacity: 1, delay:50});
			$(".dynamic-brand ").transition({x: 350, opacity: 1, delay:100}, 50, 'ease');
		}
	});
});

$(document).ready(function(){
	$('a[href^="/#"]').on('click', function(event){     
	    event.preventDefault();
	    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
});

$(window).load(function() {
	var max_height = 0;
	$(".project-thumbnail").each(function() {
		var th_h = $(this).height();
		if(th_h > max_height) {
			max_height = th_h;
		}
	});
	$(".project-thumbnail").height(max_height);
})