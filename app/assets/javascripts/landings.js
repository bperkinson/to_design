
$(document).ready(function(){
	$(window).scroll(function(){
		if($(".chev-down").visible()) {
			$("#about-image").transition({ opacity:100, x:'100px'}, 1500, 'snap');
			$("#about-description").transition({ opacity:100, x:'-100px', delay:(200)}, 1500, 'snap');
		}
		if($(".chev-down").visible()) {
			$("#phil-image").transition({ opacity:100, x:'100px'}, 1500, 'snap');
			$("#phil-description").transition({ opacity:100, x:'-100px', delay:(200)}, 1500, 'snap');
		}
		if($(".project").visible(true)) {
			$(".project").each(function( i ) {
				$(this).transition({ opacity:100, y:-120, delay:(100 + i*100) }, 1000, 'snap');
			});
		}

	});
});