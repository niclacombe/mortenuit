<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Listes des actions à valider</h1>
		</div>

		<?php if(empty($actions) ): ?>

			<h3>Aucune action à valider!</h3>

		<?php else: ?>

			<div class="row">
				<div class="col-md-8">
					<table class="table table-responsive table-striped">
						<tr>
							<th>Contact</th>
							<th>Secteur - Niveau</th>
							<th>Aperçu</th>
							<th>Date de Parution</th>
							<th>Actions</th>
						</tr>
					<?php foreach ($actions as $action) : ?>
						<tr>
							<td><?php echo $action->nomContact; ?></td>
							<td><?php echo $action->nomSecteur .' - ' .$action->niveauContact; ?></td>
							<td><?php echo substr($action->description,0,50); ?></td>
							<td><?php echo $action->date_parution; ?></td>
							<td><button class="btn btn-primary"><span class="fa fa-eye"></span></button></td>
						</tr>
					<?php endforeach; ?>
					</table>
				</div>
			</div>

		<?php endif; ?>

		

	</div>
</div>