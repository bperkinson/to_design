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
//= require jquery
//= require jquery_ujs
//= require jquery.transit.min
//= require jquery.visible
//= require twitter/bootstrap
//= require turbolinks


$(document).ready(function(){
$('.menu').on('click', function(event){     
    event.preventDefault();
    $('li.menu').hide('puff').transition({ opacity: 0});
	$('a.top-link.menu-item').show('puff').transition({ opacity: 1}, 100, 'ease'); 
    $('li.menu-hide').show('puff').transition({ opacity: 1}, 300, 'ease'); 	
	
});
});


$(document).ready(function(){
    $('a[href^="/#"]').on('click', function(event){     
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
    });
});

$(document).ready(function(){
$('.menu-hide').on('click', function(event){     
    event.preventDefault();
    $('li.menu').show('puff').transition({ opacity: 1});
    $('a.top-link.menu-item').hide('puff').transition({ opacity: 0}, 100, 'ease'); 
    $('li.menu-hide').hide('puff').transition({ opacity: 0}, 300, 'ease');  	
	
});
});

$(document).ready(function(){
    $("[id^=title-item]").each(function(i,obj) {
        $("#title-item-"+i).transition({ opacity:1, y:'-50px', delay:((i*2000) + 2000)}).transition({ opacity:0, scale:0.2, delay:(1000)});
    });
    $("#last-title-item").transition({ opacity:1, y:'-50px', delay:(8000)});
});
