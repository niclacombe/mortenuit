<h3>Détails de <?php echo $perso->nom; ?></h3>
<table class="table table-striped">
	<tr>
		<th class="col-md-2">Nom</th>
		<td class="col-md-4"><?php echo $perso->nom; ?></td>
		<th class="col-md-2">Concept</th>
		<td class="col-md-4"><?php echo $perso->concept; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Clan</th>
		<td class="col-md-4"><?php echo $perso->nom; ?></td>
		<th class="col-md-2">Génération</th>
		<td class="col-md-4"><?php echo $perso->generation; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Nature</th>
		<td class="col-md-4"><?php echo $perso->nature; ?></td>
		<th class="col-md-2">Attitude</th>
		<td class="col-md-4"><?php echo $perso->attitude; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Attributs</th>
		<td class="col-md-4">
			<ul class="list-unstyled">
				<li><strong>Physique : </strong><?php echo $perso->physique; ?></li>
				<li><strong>Social : </strong><?php echo $perso->social; ?></li>
				<li><strong>Mental : </strong><?php echo $perso->mental; ?></li>
			</ul>
		</td>
		<th class="col-md-2">Disciplines</th>
		<td class="col-md-4">
			<ul class="list-unstyled">
				<li><strong><?php echo $perso->startDisc_1; ?> : </strong><?php echo $perso->physique; ?></li>
				<li><strong><?php echo $perso->startDisc_2; ?> : </strong><?php echo $perso->social; ?></li>
				<li><strong><?php echo $perso->startDisc_3; ?> : </strong><?php echo $perso->mental; ?></li>
			</ul>			
		</td>
	</tr>
	<tr>
		<th class="col-md-2">Ressources</th>
		<td class="col-md-4"><?php echo $perso->ressources; ?></td>
		<th class="col-md-2">Herd</th>
		<td class="col-md-4"><?php echo $perso->herd; ?></td>
	</tr>
</table>

<h4>Historique</h4>

<p><?php echo $perso->background; ?></p>
<div class="col-md-6">
	<a href="<?php echo site_url('admin/confirmPerso/') .$perso->id .'/true'; ?>">
		<button class="btn btn-block btn-success"><span class="fa fa-check"></span> Approuver</button>
	</a>
</div>
<div class="col-md-6">
	<a href="<?php echo site_url('admin/confirmPerso/') .$perso->id .'/false'; ?>">
		<button class="btn btn-block btn-danger"><span class="fa fa-check"></span> Refuser</button>
	</a>
</div>