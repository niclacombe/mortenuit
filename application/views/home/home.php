<div id="page-wrapper">
	<div class="page-wrapper">
		<div class="row">
			<div class="col-xs-12">
				<h1>Accueil</h1>

				<?php 
					if (isset($userInfo) && $userInfo != NULL) {
				?>
						<h2>Bonjour <?php echo $userInfo->prenom; ?></h2>
				<?php
					}
					if (isset($userInfo) && $userInfo == false){
				?>
						<h2>Erreur de connexion</h2>
				<?php 
					}
				?>

			</div>
		</div>
	</div>
</div>