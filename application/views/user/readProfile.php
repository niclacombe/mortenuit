<div id="page-wrapper">
	<div class="page-wrapper">
		<div class="row">
			<h2>Profil de <?php echo $userInfo->prenom . ' ' . $userInfo->nom; ?></h2>
		</div>
		<div class="row">
			<div class="col-md-6 col-xs-12">
				<h3>Modifier le courriel</h3>

				<?php echo validation_errors(); ?>

				<?php 

					$args = array(
						'class'	=> 'col-xs-12',
					);
					echo form_open('user/updateEmail/' . $userInfo->id, $args);

					echo '<div class="form-group">';

					echo form_label('Ancien Courriel : ');
					$args = array(
	                    'type'  => 'text',
	                    'name'  => 'old_courriel',
	                    'class' => 'form-control',
	                    'placeholder'   => $userInfo->courriel,
	                    'disabled'		=> 'disabled',
	                );
	                echo form_input($args);

	                echo '</div>';
	                echo '<div class="form-group">';

	                echo form_label('Nouveau Courriel : ');
	                $args = array(
	                    'type'  => 'text',
	                    'name'  => 'new_courriel',
	                    'class' => 'form-control',
	                    'placeholder'   => 'Nouveau Courriel',
	                );
	                echo form_input($args);

					echo '</div>';

					$args = array(
						'class'		=> 'btn btn-primary',
					);

					echo form_submit($args,'Modifier');

					echo form_close();
				?>
			</div>
			<div class="col-md-6 col-xs-12">
				<h3>Modifier le Mot de Passe</h3>

				<?php echo validation_errors(); ?>

				<?php 

					$args = array(
						'class'	=> 'col-xs-12',
					);
					echo form_open('user/updatePassword/' . $userInfo->id, $args);

					echo '<div class="form-group">';

					echo form_label('Ancien Mot de Passe : ');
					$args = array(
	                    'type'  => 'text',
	                    'name'  => 'old_password',
	                    'class' => 'form-control',
	                    'placeholder'   => 'Ancien Mot de Passe',
	                );
	                echo form_input($args);

	                echo '</div>';
	                echo '<div class="form-group">';

	                echo form_label('Nouveau Mot de Passe : ');
	                $args = array(
	                    'type'  => 'password',
	                    'name'  => 'new_password',
	                    'class' => 'form-control',
	                    'placeholder'   => 'Nouveau Mot de Passe',
	                );
	                echo form_input($args);

					echo '</div>';

					echo '<div class="form-group">';

	                echo form_label('Confirmation : ');
	                $args = array(
	                    'type'  => 'password',
	                    'name'  => 'password_confirm',
	                    'class' => 'form-control',
	                    'placeholder'   => 'Confirmation',
	                );
	                echo form_input($args);

					echo '</div>';

					$args = array(
						'class'		=> 'btn btn-primary',
					);

					echo form_submit($args,'Modifier');

					echo form_close();
				?>
			</div>
		</div>
	</div>
</div>