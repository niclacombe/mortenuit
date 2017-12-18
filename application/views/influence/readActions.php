<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Consulter les actions</h1>
		</div>
		<?php echo form_open('influence/readActions/' .$activePerso->id); ?>
		<div class="row">
			<div class="col-md-3 col-md-offset-3">
				<div class="input-group input-daterange">
					<div class="input-group-addon">Du</div>
				    <input name="startDate" id="startDate" type="text" class="form-control" value="<?php echo $startDate; ?>">
				    <div class="input-group-addon">au</div>
				    <input  name="endDate" id="endDate" type="text" class="form-control" value="<?php echo $endDate; ?>">
				</div>
				<br>
				<button class="btn btn-primary btn-lg btn-block"><span class="fa fa-search"></span> Rechercher</button>
			</div>
			<div class="col-md-offset-1 col-md-5">
				<h3>Trier par secteurs</h3>
				<?php foreach ($secteurs as $secteur) : ?>

					<div class="form-group col-xs-3">
						<label for="" class="form-checkbox-inline">
							<input name="secteurs[] ?>" class="secteurs" value="<?php echo $secteur->id; ?>" type="checkbox" >
								<?php echo $secteur->secteur; ?> 
							</label>
					</div>
				<?php endforeach; ?>
			</div>
		</div>

		<?php echo form_close(); ?>

		<div id="actions">
			<?php if( empty($actions) ) : ?>
				<h3>Aucune action d'influence ne correspond à votre recherche.</h3>
			<?php else : ?>
				<h3>Actions du <?php echo $startDate; ?> au <?php echo $endDate; ?></h3>
				<h4>Vous avez <?php echo $freebies->freebies; ?> freebies en banque.</h4>
				<table class="table table-striped table-responsive">
					<tr>
						<th class="col-md-1">Date</th>
						<th class="col-md-2 ">Contact</th>
						<th class="col-md-5">Action</th>
						<?php if($userInfo->is_admin) :?>
							<th class="col-md-4 ">Admin</th>
						<?php endif; ?>
					</tr>
					<?php foreach ($actions as $action) : ?>
						<tr>
							<td><?php echo $action['date_parution']; ?></td>
							<td>
								<?php if ($action['locked'] == false || $action['contact_owned']) : ?>
								<strong>
										<?php if($action['contact_owned']) : ?>
											<span class="fa fa-star"></span>&nbsp
										<?php endif; ?>
										<?php echo $action['nomContact'] .'<em> ( ' .$action['nomSecteur'] .' )</em>'; ?>	
									</strong>
									<br>
									<em><?php echo $action['titre']; ?></em>
								<?php else : ?>
									Action Discrète
								<?php endif;  ?>
							</td>
							<td>
								<?php 
								if ($action['locked'] == false && $action['secret'] == 0) {
									echo $action['description'];
								} elseif (($action['locked'] == false && $action['secret'] > 0) || $action['contact_owned']){
									echo '<em>' .$action['description'] .'<br>--<br>Action discrète ( ' .$action['secret'] .' )';
								} else { ?>
									Action discrète <em>( <?php echo $action['secret']; ?> points )</em>
									<br><br>
									<a href="<?php echo site_url('influence/unlockAction/') .$activePerso->id .'/' .$action['id']; ?>">
										<button class="btn btn-success">
											<span class="fa fa-unlock"></span>
											 Voir cette action (<?php echo $action['secret']; ?> freebies)
										</button>
									</a>
								<?php
									} //endif
								?>									
							</td>
							<?php if($userInfo->is_admin) :?>
								<td><button class="btn btn-primary"><span class="fa fa-edit"></span></button></td>
							<?php endif; ?>						
						</tr>
					<?php endforeach; ?>
				</table>
			<?php endif; ?>
		</div>



	</div>
</div>

<script>
	$('.input-daterange input[name="startDate"]').each(function() {
		$(this).datepicker({
			format : 'yyyy-mm-dd',
			endDate : "<?php echo date('Y-m-d', strtotime('yesterday')); ?>",
			autoclose : true,
		});
	});

	$('.input-daterange input[name="endDate"]').each(function() {
		$(this).datepicker({
			format: 'yyyy-mm-dd',
			endDate : "<?php echo date('Y-m-d', time()); ?>",
			autoclose : true,
		});
	});

	$('input[type="checkbox"].secteurs').on('change',function(){
		$('html').css('cursor','wait');
		var secteurs = [],
			checkboxes = $('input[type="checkbox"].secteurs:checked');

		$.each(checkboxes, function(){
			secteurs.push( $(this).val() );
		});

		$.ajax({
			'url' : "<?php echo site_url('influence/sortActionsBySector/'); ?>" + <?php echo $activePerso->id; ?>,
			'type' : 'POST',
			'data' : {
				'startDate' : $('input[name="startDate"]').val(),
				'endDate' : $('input[name="endDate"]').val(),
				'secteurs' : (secteurs.length < 1) ? null : secteurs
			},
			'success' : function(data){
				$('#actions').html(data);
				$('html').css('cursor', 'default');
			},
			'error' : function (err){
				console.log(err);
			}
		})
	});

</script>