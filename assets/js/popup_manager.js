$(function(){

	// nav
	$('#confirmCancel').hide()
	$('#btn-confirmCancel').click(function(){
		id = $(this).attr('data-cancel');
		$('#confirmCancel #confirmLink').attr('href','news/deleteNews/' + id);
		$('#confirmCancel').bPopup({

		});
	});
});
