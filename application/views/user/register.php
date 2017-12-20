<div id="page-wrapper">
	<div class="page-wrapper">
		<div class="row">
			<div class="col-xs-12">
				<h2>Inscription</h2>

				<?php echo validation_errors(); ?>

				<?php 
					
					if( isset($registerSuccess) && $registerSuccess == true ):
				?>
						<div class="row">
							<div class="col-xs-12">
								<h4><span class="fa fa-thumb-up"></span> Un courriel à été envoyé à l'adresse <em><?php echo $courriel; ?></em> pour confirmer votre inscription.</h4>
							</div>
						</div>
				<?php		
					else:

					$data = array(
						'class'	=> 'col-md-8 col-xs-12',
					);
					echo form_open('user/addUser',$data );

						echo form_label('Prénom : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'prenom',
							'class'	=> 'form-control',
							'placeholder'	=> 'Prénom',
						);
						echo form_input($data);

						echo form_label('Nom : ');
						$data = array(
							'type'	=> 'text',
							'name'	=> 'nom',
							'class'	=> 'form-control',
							'placeholder'	=> 'Nom',
						);
						echo form_input($data);

						echo form_label('Courriel : ');
						$data = array(
							'type'	=> 'email',
							'name'	=> 'courriel',
							'class'	=> 'form-control',
							'placeholder'	=> 'Courriel',
						);
						echo form_input($data);

						echo form_label('Mot de Passe : ');
						$data = array(
							'type'	=> 'password',
							'name'	=> 'password',
							'class'	=> 'form-control',
							'placeholder'	=> 'Mot de Passe',
						);
						echo form_input($data);

						echo form_label('Confirmation du Mot de Passe : ');
						$data = array(
							'type'	=> 'password',
							'name'	=> 'password2',
							'class'	=> 'form-control',
							'placeholder'	=> 'Mot de Passe',
						);
						echo form_input($data);

						$data = array(
							'name'	=> 'confirmationAge',
							'class'	=> 'form-check-input',
							'id'	=> 'confirmationAge',
						);
						echo form_checkbox($data);
						echo form_label("En m'inscrivant, je comprends que cette activité est réservée au 18 ans et plus.");

						$data = array(
							'class'		=> 'btn btn-primary',
							'id'		=> 'btnSubmit',
							'disabled'	=> 'disabled',
						);
						echo form_submit($data,'Soumettre');

					echo form_close();

				endif;
				?>
			</div>
		</div>
	</div>
</div> <!-- #wrapper -->

<script>
	$('#confirmationAge').on('click',function(){
		if($('#btnSubmit').attr('disabled')){
			$('#btnSubmit').removeAttr('disabled');
		}
		else{
			$('#btnSubmit').attr('disabled','disabled');
		}
	});
</script>