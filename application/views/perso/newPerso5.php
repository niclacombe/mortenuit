
		<?php $userInfo = $this->session->user_info; ?>
		<?php if(isset($newPersoAttente) && isset($newPersoAttente) == true ) : ?>
			<h2>Votre personnage a été créé; surveillez vos courriels pour son approbation.</h2>
			<h2>Bienvenue dans la Malédiction du Sang</h2>

			<iframe src="https://giphy.com/embed/XreQmk7ETCak0" width="480" height="360" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
			<br>
			<a href="<?php echo site_url('/'); ?>"><button class="btn btn-primary"><span class="fa fa-chevron-left"></span> Retourner à l'accueil</button></a>
		<?php else : ?>

			<div class="row">
				<h3>Étape 6/6</h3>
				<h2>Créer un Personnage</h2>
				<h3>Derniers ajustements et historique</h3>
			</div>

			<div class="row"><?php echo validation_errors(); ?></div>

			<?php echo form_open('perso/newPerso6/' .$idPerso . '/' .$userInfo->id); ?>

			<input name="freebiesCount" type="hidden" value="<?php echo intval($freebies->freebies); ?>">

			<div class="row">
				<div class="col-xs-12">
					<h3>Il vous reste <span id="freebiesCount"><?php echo $freebies->freebies; ?></span> freebies.</h3>
				</div>
			</div>

			<div class="row">
				<div class="col md-6"></div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<label for="bg">Historique de votre personnage <em>(500 caractères max.)</em></label>
					<textarea name="bg" id="bg" class="form-control"></textarea>
					<em style="float: right"><span id="wordcount">0</span> caractères</em>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2">
					<button class="btn btn-success"><span class="fa fa-save"></span> Soumettre le personnage pour approbation</button>
				</div>
			</div>

			<?php echo form_close(); ?>

		<?php endif; ?>


<script>
	$('#bg').on('keyup',function(){
		var wordcount = $('#bg').val();
		
		$('#wordcount').html(parseInt(wordcount.length) );
	})
</script>