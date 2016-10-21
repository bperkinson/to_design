
$(document).ready(function(){
	$(window).scroll(function(){
		if($("#about-title").visible()) {
			$("#about-title").transition({ opacity:100, x:'100px'}, 1500, 'snap');
			$("#about-description").transition({ opacity:1, x:'-100px', delay:(200)}, 1500, 'snap');
		}
		if($("#phil-title").visible()) {
			$("#phil-title").transition({ opacity:100, x:'100px'}, 1500, 'snap');
			$("#phil-description").transition({ opacity:100, x:'-100px', delay:(200)}, 1500, 'snap');
		}
		if($(".project").visible(true)) {
			$(".project").each(function( i ) {
				$(this).transition({ opacity:100, y:-120, delay:(100 + i*100) }, 1000, 'snap');
			});
		}

	});
});