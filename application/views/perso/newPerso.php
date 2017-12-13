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
			echo form_open('perso/newPerso2/' .$userInfo->id,$data );
		?>

		<div class="row">
			<ul class="nav nav-tabs">
				<li <?php if(!isset($disciplines)) : echo 'class="active"'; else: echo 'class="disabled"'; endif; ?> ><a data-toggle="tab" href="#step1">Étape 1</a></li>
				<?php if(isset($disciplines)) : ?><li <?php if(!isset($habiletes)) : echo 'class="active"'; else: echo 'class="disabled"'; endif; ?> ><a data-toggle="tab" href="#step2">Étape 2</a></li><?php endif; ?>
				<?php if(isset($habiletes)) : ?><li class="active"><a data-toggle="tab" href="#step2">Étape 3</a></li><?php endif; ?>
			</ul>

			<div class="tab-content">
				<div id="step1" class="tab-pane fade in <?php if(!isset($disciplines)) : echo 'active'; endif; ?>">
					<div class="row">
						<div class="col-xs-12">
							<h3>Étape 1/6</h3>
							<h3>Informations de base</h3>
							<div class="form-group col-md-4 col-xs-12">
								<label for="nom">Nom :</label>
								<input type="text" name="nom" class="form-control" value="<?php echo set_value('nom'); ?>" >
							</div>

							<div class="form-group col-md-4 col-xs-12">
								<label for="concept">Concept :</label>
								<input type="text" name="concept" class="form-control" value="<?php echo set_value('concept'); ?>">
							</div>

							<div class="form-group col-md-4 col-xs-12">
								<label for="clan">Clan :</label>
								<select name="clan" class="form-control" id="select_clan">
									<?php foreach ($clans as $clan) { ?>
										<option value="<?php echo $clan->id; ?>" <?php if($clan->id == set_value('clan')) : echo 'selected'; endif; ?>>
											<?php echo $clan->name ?>
										</option>
									<?php } //end Foreach ?>
								</select>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group col-xs-6 col-md-4">
								<label for="nature">Nature :</label>
								<select name="nature" class="form-control">
									<?php foreach ($natures as $nature) : ?>
										<option value="<?php echo $nature->id; ?>" <?php if($nature->id == set_value('nature')) : echo 'selected'; endif; ?>>
											<?php echo $nature->nom; ?>
										</option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="form-group col-xs-6 col-md-4">
								<label for="attitude">Attitude :</label>
								<select name="attitude" class="form-control">
									<?php foreach ($natures as $nature) : ?>
										<option value="<?php echo $nature->id; ?>" <?php if($nature->id == set_value('attitude')) : echo 'selected'; endif; ?>>
											<?php echo $nature->nom; ?>
										</option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="col-xs-6 col-md-4"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<h3>Attributs</h3>
							<h4>En sélectionnant votre attribut primaire, vous lui attribuerez 7 traits. Le secondaire, 5 traits et le tertiaire, 3 traits.</h4>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs physiques</h4>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="7" name="physique" <?php if(set_value('physique') == 7 && set_value('physique')) : echo 'checked'; else : echo 'checked'; endif; ?> >
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="5" name="physique" <?php if(set_value('physique') == 5 ) : echo 'checked'; endif; ?>>
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="3" name="physique" <?php if(set_value('physique') == 3 ) : echo 'checked'; endif; ?>>
										3 traits
									</label>
								</div>						
							</div>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs sociaux</h4>
								<div class="radio">
									<label for="social">
										<input type="radio" value="7" name="social" <?php if(set_value('social') == 7 && set_value('social')) : echo 'checked'; else : echo 'checked'; endif; ?> >
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="social">
										<input type="radio" value="5" name="social" <?php if(set_value('social') == 5 ) : echo 'checked'; endif; ?>>
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="social">
										<input type="radio" value="3" name="social" <?php if(set_value('social') == 3 ) : echo 'checked'; endif; ?>>
										3 traits
									</label>
								</div>						
							</div>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs mentaux</h4>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="7" name="mental" <?php if(set_value('mental') == 7 && set_value('mental')) : echo 'checked'; else : echo 'checked'; endif; ?> >
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="5" name="mental" <?php if(set_value('mental') == 5 ) : echo 'checked'; endif; ?>>
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="3" name="mental" <?php if(set_value('mental') == 3 ) : echo 'checked'; endif; ?>>
										3 traits
									</label>
								</div>						
							</div>
						</div>						
					</div>
				</div>

				<?php if(isset($disciplines)) : ?>
				<div id="step2" class="tab-pane fade in <?php if(!isset($habiletes)) : echo 'active'; endif; ?>">
					<?php include('newPerso2.php'); ?>
				</div>
				<?php endif; ?>

				<?php if(isset($habiletes)) : ?>
				<div id="step2" class="tab-pane fade in active">
					<?php include('newPerso3.php'); ?>
				</div>
				<?php endif; ?>
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

			<?php if(isset($startDisciplines)): ?>

			<div class="row">
				<div id="discipline1" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[0]['name']; ?></h3>
					<p><?php echo $startDisciplines[0]['description']; ?></p>
				</div>
				<div id="discipline2" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[1]['name']; ?></h3>
					<p><?php echo $startDisciplines[1]['description']; ?></p>
				</div>
				<div id="discipline3" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[2]['name']; ?></h3>
					<p><?php echo $startDisciplines[2]['description']; ?></p>
				</div>
			</div>

		<?php endif; ?>
			



	</div>
</div>