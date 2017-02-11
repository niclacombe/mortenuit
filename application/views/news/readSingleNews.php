<div id="page-wrapper">
	<div class="page-wrapper">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Modifier une Nouvelle</h2>
		</div>

		<div class="row">
			<?php 
				$data = array(
						'class'	=> 'col-md-8 col-xs-12',
					);
					echo form_open('news/updateNews',$data );

						echo form_label('Titre : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'title',
							'class'	=> 'form-control',
							'value'	=> $new->title,
						);
						echo form_input($data);

						echo form_label('Contenu : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'content',
							'class'	=> 'form-control',
							'value'	=> $new->content,
						);
						echo form_textarea($data);
			?>
						<p class="charCounter">Nombre de caractère restant : <span>1000</span></p>
			<?php

						echo form_hidden('id', $new->id);

						$data = array(
							'class'		=> 'btn btn-primary',
							'id'		=> 'btnSubmit',
						);
						echo form_submit($data,'Soumettre');

					echo form_close();
			?>

		</div>
	</div>
</div>

<script>
	$(function(){
		nbChar = parseInt($('.charCounter span').html());

		$('textarea').on('keyup blur', function(){
			$('.charCounter span').html(nbChar - $(this).val().length )
		});
	});
</script>