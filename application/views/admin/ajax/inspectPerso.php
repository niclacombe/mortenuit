<?php $persoInfo = $perso['perso']; ?>
<?php $disciplines = $perso['disciplines']; ?>
<h3>Détails de <?php echo $persoInfo->nom; ?></h3>
<table class="table table-striped">
	<tr>
		<th class="col-md-2">Nom</th>
		<td class="col-md-4"><?php echo $persoInfo->nom; ?></td>
		<th class="col-md-2">Concept</th>
		<td class="col-md-4"><?php echo $persoInfo->concept; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Clan</th>
		<td class="col-md-4"><?php echo $persoInfo->clanNom; ?></td>
		<th class="col-md-2">Génération</th>
		<td class="col-md-4"><?php echo $persoInfo->generation; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Nature</th>
		<td class="col-md-4"><?php echo $persoInfo->natNom; ?></td>
		<th class="col-md-2">Attitude</th>
		<td class="col-md-4"><?php echo $persoInfo->attNom; ?></td>
	</tr>
	<tr>
		<th class="col-md-2">Attributs</th>
		<td class="col-md-4">
			<ul class="list-unstyled">
				<li><strong>Physique : </strong>
					<?php for($i=0; $i < $persoInfo->physique; $i++) : ?>
						<span class="fa fa-circle"></span>
					<?php endfor; ?>
					<?php for($j=0; $j < 10-$persoInfo->physique; $j++) : ?>
						<span class="fa fa-circle-o"></span>
					<?php endfor; ?>
				</li>
				<li><strong>Social : </strong>
					<?php for($i=0; $i < $persoInfo->social; $i++) : ?>
						<span class="fa fa-circle"></span>
					<?php endfor; ?>
					<?php for($j=0; $j < 10-$persoInfo->social; $j++) : ?>
						<span class="fa fa-circle-o"></span>
					<?php endfor; ?>
				</li>
				<li><strong>Mental : </strong>					
					<?php for($i=0; $i < $persoInfo->mental; $i++) : ?>
						<span class="fa fa-circle"></span>
					<?php endfor; ?>
					<?php for($j=0; $j < 10-$persoInfo->mental; $j++) : ?>
						<span class="fa fa-circle-o"></span>
					<?php endfor; ?>
				</li>
			</ul>
		</td>
		<th class="col-md-2">Disciplines</th>
		<td class="col-md-4">
			<ul class="list-unstyled">
				<?php foreach ($disciplines as $discipline) : ?>
					<li>
						<strong><?php echo $discipline->nomDisc; ?> : </strong>
						<?php if ($discipline->niveau > 0) : ?>
							<?php for($i=0; $i < $discipline->niveau; $i++) : ?>
								<span class="fa fa-circle"></span>
							<?php endfor; ?>
							<?php for($j=0; $j < 5-$discipline->niveau; $j++) : ?>
								<span class="fa fa-circle-o"></span>
							<?php endfor; ?>
						<?php else : ?>
							<?php for($k=0; $k < 5; $k++) : ?>
								<span class="fa fa-circle-o"></span>
							<?php endfor; ?>
						<?php endif; ?>
					</li>
				<?php endforeach; ?>
			</ul>			
		</td>
	</tr>
	<tr>
		<th class="col-md-2">Ressources</th>
		<td class="col-md-4">
			<?php if ($persoInfo->ressources > 0) : ?>
				<?php for($i=0; $i < $persoInfo->ressources; $i++) : ?>
					<span class="fa fa-circle"></span>
				<?php endfor; ?>
				<?php for($j=0; $j < 5-$persoInfo->ressources; $j++) : ?>
					<span class="fa fa-circle-o"></span>
				<?php endfor; ?>
			<?php else : ?>
				<?php for($k=0; $k < 5; $k++) : ?>
					<span class="fa fa-circle-o"></span>
				<?php endfor; ?>
			<?php endif; ?>
		</td>
		<th class="col-md-2">Herd</th>
		<td class="col-md-4">
			<?php if ($persoInfo->herd > 0) : ?>
				<?php for($i=0; $i < $persoInfo->herd; $i++) : ?>
					<span class="fa fa-circle"></span>
				<?php endfor; ?>
				<?php for($j=0; $j < 5-$persoInfo->herd; $j++) : ?>
					<span class="fa fa-circle-o"></span>
				<?php endfor; ?>
			<?php else : ?>
				<?php for($k=0; $k < 5; $k++) : ?>
					<span class="fa fa-circle-o"></span>
				<?php endfor; ?>
			<?php endif; ?>
		</td>
	</tr>
</table>

<h4>Historique</h4>

<p><?php echo $persoInfo->background; ?></p>
<div class="col-md-6">
	<a href="<?php echo site_url('admin/confirmPerso/') .$persoInfo->id .'/true'; ?>">
		<button type="button" class="btn btn-block btn-success"><span class="fa fa-check"></span> Approuver</button>
	</a>
</div>
<div class="col-md-6">
	<a id="refusCommentToggle" href="#">
		<button type="button" class="btn btn-block btn-danger"><span class="fa fa-close"></span> Refuser</button>
	</a>
</div>
<div class="col-md-12" id="refusComment">
	<?php echo form_open('admin/confirmPerso/' .$persoInfo->id .'/false'); ?>
		<label for="refusComment">Commentaire* (min 5 caractière)</label>
		<textarea class="form-control" name="refusComment" cols="30" rows="10"></textarea>
		<button id="refusSubmit" type="submit" class="btn btn-block btn-danger" disabled="disabled"><span class="fa fa-close"></span> Refuser</button>
	<?php echo form_close(); ?>	
</div>

<script>
	$('#refusComment').hide();

	$('#refusCommentToggle').click(function(e){
		e.preventDefault();
		$('#refusCommentToggle button').attr('disabled','disabled');
		$('#refusComment').slideToggle();
	});

	$('textarea[name="refusComment"]').on('keyup', function(){
		if($(this).val().length >= 5) {
			$('#refusSubmit').removeAttr('disabled');
		} else {
			$('#refusSubmit').attr('disabled','disabled');
		}
	});
</script>