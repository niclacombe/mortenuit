<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>

		<div class="row">
			<div class="col-md-6">
				<?php if(empty($persos)): ?>
					<h3>Aucun personnage à valider</h3>
				<?php else: ?>
					<h3>Personnages à valider</h3>
					<table class="table table-responsive table-striped">
						<tr>
							<th>Joueur</th>
							<th>Personnage</th>
							<th>Date de création</th>
							<th>Actions</th>
						</tr>
						<?php foreach ($persos as $perso) : ?>
							<tr>
								<td><?php echo $perso->nomUser; ?></td>
								<td><?php echo $perso->nom; ?></td>
								<td><?php echo $perso->date_soumission; ?></td>
								<td>
									<button class="btn btn-primary btn-viewer" data-idperso="<?php echo $perso->id; ?>"><span class="fa fa-eye"></span></button>
								</td>
							</tr>
						<?php endforeach; ?>
					</table>
				<?php endif; ?>
			</div>
			<div id="persoViewer" class="col-md-6">
				
			</div>
		</div>

	</div>
</div>

<script>
	$('.btn-viewer').on('click',function(){
		$.ajax({
			'url' : "<?php echo site_url('admin/inspectPerso/'); ?>" + $(this).attr('data-idperso'),
			'type' : 'POST',
			'success' : function(data){
				$('#persoViewer').html(data);
			},
			'error' : function(err){
				console.log(err);
			}
		});
	});
</script>