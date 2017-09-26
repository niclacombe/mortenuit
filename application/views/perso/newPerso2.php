<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<?php 
			$data = array(
				'class'	=> 'col-xs-12',
			);
			echo form_open('perso/newPerso3/' .$userInfo->id,$data );
		?>
		<div class="row">
			<div >
				<pre><?php echo var_dump($disciplines); ?></pre>
				
			</div>			
			
		</div>

		<br><br>

		<div class="row">
			<div class="col-xs-6 col-md-3 col-xs-offset-6 col-md-offset-9">
				<button class="btn btn-primary btn-block btn-lg"><span class="fa fa-save"></span> Sauvegarder et continuer</button>
			</div>
		</div>


			<?php
				echo form_close(); 
			?>
			



	</div>
</div>
