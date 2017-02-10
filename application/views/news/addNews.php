<div id="page-wrapper">
	<div class="page-wrapper">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Ajouter une Nouvelle</h2>
		</div>

		<div class="row">
			<?php 
				$data = array(
						'class'	=> 'col-md-8 col-xs-12',
					);
					echo form_open('news/createNews',$data );

						echo form_label('Titre : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'title',
							'class'	=> 'form-control',
							'placeholder'	=> 'Titre',
						);
						echo form_input($data);

						echo form_label('Contenu : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'content',
							'class'	=> 'form-control',
							'placeholder'	=> 'Contenu',
						);
						echo form_textarea($data);

						$data = array(
							'name'	=> 'id_author',
							'value'	=> $userInfo->id,
						);
						echo form_hidden($data);

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