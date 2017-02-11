<div id="page-wrapper">
	<div class="page-wrapper">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<div class="row">

			<?php 
				$data = array(
					'class'	=> 'col-md-6 col-xs-12',
				);
				echo form_open('perso/CreatePerso',$data );

				echo '<div class="form-group col-md-6 col-xs-12">';

				echo form_label('Nom : ');
				$data = array(
					'type'	=> 'text',
					'name'	=> 'nom',
					'class'	=> 'form-control',
					'placeholder'	=> 'Nom',
				);
				echo form_input($data);

				echo '</div><div class="form-group col-md-6 col-xs-12">';

				echo form_label('Concept : ');
				$data = array(
					'type'	=> 'text',
					'name'	=> 'concept',
					'class'	=> 'form-control ',
					'placeholder'	=> 'Concept',
				);
				echo form_input($data);

				echo '</div><div class="form-group col-md-6 col-xs-12">';

				echo form_label('Clan : ');
				$options = array(
					'brujah'	=> 'Brujah',
					'malkavian'	=> 'Malkavian',
					'nosferatu'	=> 'Nosferatu',
					'toreador'	=> 'Toreador',
					'tremere'	=> 'Tremere',
					'ventrue'	=> 'Ventrue',
				);
				echo form_dropdown('clan', $options, '', $args = ['class'=>'form-control']);

				echo '</div>';

			?>
		</div>

		<div class="row"></div>
		<div class="row"></div>
		<div class="row">
			<?php

				$data = array(
					'class'		=> 'btn btn-danger',
					'id'		=> 'btnSubmit',
					'disabled'	=> 'disabled',
				);

				echo form_submit($data,'Soumettre');

				echo form_close(); 
			?>
			
		</div>


		</div>
	</div>
</div>