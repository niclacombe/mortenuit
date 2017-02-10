<div id="page-wrapper">
	<div class="page-wrapper">
		<div class="row">
			<div class="col-xs-12">
				<h1>Accueil</h1>

				<?php if (isset($_SESSION) && $this->session->userdata('is_logged_in') != NULL) : ?>
					<h2>Bonjour <?php echo $this->session->userdata['user_info']->prenom; ?></h2>
				<?php endif; ?>
				<?php if (isset($userInfo) && $userInfo == false) : ?>
					<h2>Erreur de connexion</h2>
				<?php endif; ?>

			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-xs-12">
				<?php 
					if (isset($news)): 
						foreach ($news as $new) { 
				?>
						<div class="panel panel-default">
							<div class="panel-heading"><?php echo $new->title; ?></div>
							<div class="panel-body"><?php echo $new->content ?></div>
						</div>
				<?php 
						} //endForeach
					endif; 
				?>
			</div>
		</div>
	</div>
</div>