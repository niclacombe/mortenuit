<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row">
			<div class="col-md-4">
				<?php echo form_open('perso/startNewPerso'); ?>
					<select name="selectPlayer" class="form-control">
						<?php foreach ($joueurs as $joueur) : ?>
							<option value="<?php echo $joueur->id ?>"><?php echo $joueur->prenom .' ' .$joueur->nom; ?></option>
						<?php endforeach; ?>
					</select>

					<button class="btn btn-primary"><span class="fa fa-user-plus"></span> Ajouter un personnage</button>
				<?php echo form_close(); ?>
			</div>
		</div>
			



	</div>
</div>