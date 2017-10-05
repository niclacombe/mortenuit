<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
			<h3>Background</h3>
		</div>

		<div class="row">
			<div class="col-xs-12 col-md-4 form-group">
				<table class="table table-responsive">
					<tr>
						<td>Génération</td>
						<td class="form-check-inline form-check">
							<label for="" class="form-check-label">
								12e <input data-cost="1" type="checkbox">
								&nbsp&nbsp							
								&nbsp11e <input data-cost="3" type="checkbox">
								&nbsp&nbsp
								&nbsp10e <input data-cost="5" type="checkbox">
							</label>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-xs-12 col-md-4 form-group">
				<table class="table table-responsive">
					<tr>
						<td>Ressources</td>
						<td class="form-check-inline form-check">
							<label for="" class="form-check-label">
								1 <input data-cost="1" type="checkbox">
								2 <input data-cost="1" type="checkbox">
								3 <input data-cost="1" type="checkbox">
								4 <input data-cost="1" type="checkbox">
								5 <input data-cost="1" type="checkbox">
							</label>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-xs-12 col-md-4 form-group">
				<table class="table table-responsive">
					<tr>
						<td>Herd</td>
						<td class="form-check-inline form-check">
							<label for="" class="form-check-label">
								1 <input data-cost="1" type="checkbox">
								2 <input data-cost="1" type="checkbox">
								3 <input data-cost="1" type="checkbox">
								4 <input data-cost="1" type="checkbox">
								5 <input data-cost="1" type="checkbox">
							</label>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div class="row">
			<h3>Contacts</h3>

			<div class="col-xs-12 col-md-3">
				<h4>Secteur</h4>
				<select name="" id="" class="form-control">
					<?php foreach ($contacts as $contact) : ?>
						<option value="<?php echo $contact['idSecteur']; ?>"><?php echo $contact['nameSecteur'] ?></option>
					<?php endforeach; ?>					
				</select>
			</div>
			<div class="col-xs-12 col-md-4">
				<?php foreach ($contacts as $contact) : ?>
					<div class="row sectorContainer">
						<h4><?php echo $contact['nameSecteur']; ?></h4>

						<table class="table table-responsive table-striped">
							<tr>
								<th>Nom du Contact</th>
								<th class="text-center">Niveau</th>
								<th class="text-center">Sélectionner</th>
							</tr>
							<?php foreach ($contact['contacts'] as $contact) : ?>
								<tr>
									<td><?php echo $contact->nom; ?></td>
									<td class="text-center"><?php echo $contact->niveau ?></td>
									<td class="text-center"><input type="checkbox"></td>
								</tr>
							<?php endforeach; ?>
						</table>
					</div>
				<?php endforeach; ?>
			</div>
			<div class="col-xs-12 col-md-4">
				<h4>Sélection</h4>
			</div>
		</div>

	</div>
</div>