$(function(){

	// nav
	$('#confirmCancel').hide()
	$('.btn-confirmCancel').click(function(e){
		e.preventDefault();
		id = $(this).attr('data-cancel');
		$('#confirmCancel #confirmLink').attr('href','news/deleteNews/' + id);
		$('#confirmCancel').bPopup({

		});
	});
});
