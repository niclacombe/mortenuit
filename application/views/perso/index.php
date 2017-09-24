<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Liste de vos personnages</h1>
		</div>
		
		<div class="row">
			<?php if(empty($personnages)) : ?>
				<h2>Vous n'avez aucun personnage.</h2>
				<a href="<?php echo site_url('perso/newPerso') ?>"><button class="btn btn-primary btn-lg"><span class="fa fa-user-plus"></span> Créer un personnage</button></a>
			<?php else : ?>

			<?php endif; ?>
		</div>

	</div>
</div>