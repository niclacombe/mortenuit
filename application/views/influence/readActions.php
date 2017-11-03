<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Consulter les actions</h1>
		</div>
		<?php echo form_open(); ?>
		<div class="row">
			<div class="col-md-3 col-md-offset-3">
				<div class="input-group input-daterange">
					<div class="input-group-addon">Du</div>
				    <input name="startDate" id="startDate" type="text" class="form-control" value="<?php echo date('Y-m-d', strtotime('-1')); ?>">
				    <div class="input-group-addon">au</div>
				    <input  name="endDate" id="endDate" type="text" class="form-control" value="<?php echo date('Y-m-d', time()); ?>">
				</div>
			</div>
		</div>

		<!--
		<div class="row">
			<div class="col-xs-12">
				<h4>Secteurs affectés</h4>
				<div class="row">
					<div class="form-group col-xs-4">
						<label for="" class="form-checkbox-inline"><input name="secteurs" id="allSecteurs" type="checkbox"> Tous les secteurs</label>
					</div>
				</div>
				<div class="row">
				<?php foreach ($secteurs as $secteur) : ?>

					<div class="form-group col-xs-4">
						<label for="" class="form-checkbox-inline">
							<input name="secteurs[] ?>" value="<?php echo $secteur->id; ?>" type="checkbox" <?php if($action->nomSecteur == $secteur->secteur) : echo 'onclick="return false;" checked'; endif; ?> >
								<?php echo $secteur->secteur; ?> 
							</label>
					</div>
				<?php endforeach; ?>
				</div>

			</div>
		</div>
		-->

		<?php echo form_close(); ?>



	</div>
</div>

<script>

	$('.input-daterange input[name="startDate"]').each(function() {
		$(this).datepicker({
			format: 'yyyy-mm-dd',
			startDate : '<$php echo date("Y-m-d", strtotime("-1 week") ); ?>',
			endDate : '<$php echo date("Y-m-d", time() ); ?>'
		});
	});

	$('.input-daterange input[name="endDate"]').each(function() {
		$(this).datepicker({
			format: 'yyyy-mm-dd',
			startDate : '<$php echo date("Y-m-d", strtotime("-1 week") ); ?>',
			endDate : '<$php echo date("Y-m-d", time() ); ?>'
		});
	});

</script>