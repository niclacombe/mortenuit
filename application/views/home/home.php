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
							<div class="panel-heading"><h4><?php echo $new->title; ?><span style="float: right;"><?php echo date('j M Y',$new->date); ?></span></h4></div>
							<div class="panel-body">
								<em>Par <?php echo $new->id_author; ?></em>
								<p><?php echo $new->content ?></p>
							</div>
						</div>
				<?php 
						} //endForeach
					endif; 
				?>
			</div>
		</div>
	</div>
</div>