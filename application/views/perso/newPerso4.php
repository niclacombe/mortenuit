<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
			<h3>Background</h3>
		</div>

		<?php foreach($contacts as $contact) : ?>
		<div class="col-md-4">

			<div class="row">
				<h4><?php echo $contact['nameSecteur']; ?></h4>

				<table class="table table-responsive table-striped">
					<tr>
						<th>Nom du Contact</th>
						<th>Niveau</th>
					</tr>
					<?php foreach ($contact['contacts'] as $contact) : ?>
						<tr>
							<td><?php echo $contact->nom; ?></td>
							<td><?php echo $contact->niveau ?></td>
						</tr>
					<?php endforeach; ?>
				</table>
			</div>

		</div>

		<?php endforeach; ?>		

	</div>
</div>