<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
			<h3>Derniers ajustements et historique</h3>
		</div>

		<?php echo form_open('perso/newPerso6/' .$idPerso . '/' .$userInfo->id); ?>

		<input name="freebiesCount" type="hidden" value="<?php echo intval($freebies->freebies); ?>">

		<div class="row">
			<div class="col-xs-12">
				<h3>Il vous reste <span id="freebiesCount"><?php echo $freebies->freebies; ?></span> freebies à distribuer</h3>
			</div>
		</div>

		<?php echo form_close(); ?>

	</div>
</div>