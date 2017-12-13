
		<div class="row">
			<h3>Étape 3/6</h3>
			<h2>Créer un Personnage</h2>
			<h3>Habiletés</h3>
			<h3>Vous avez 5 "points" à distribuer</h3>
		</div>

		<?php echo form_open('perso/newPerso4/' .$idPerso . '/' .$userInfo->id); ?>

		<div class="row">
			<div class="col-xs-12 col-md-4">
				<table class="table table-responsive table-striped">
					<?php foreach (array_slice($habiletes, 0, ceil(count($habiletes)/2)) as $habilete) : ?>
						<tr>
							<td>
								<?php echo $habilete->habilete; ?>
							</td>
							<td class="form-check form-check-inline align-right">
								<label for="" class="form-check-label">
									1 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-1" 
											type="checkbox">
									2 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-2" 
											type="checkbox" 
											disabled="disabled">
									3 <input class="habilete" 
										name="<?php echo $habilete->habilete; ?>" 
										value="<?php echo $habilete->id; ?>-3" 
										type="checkbox" 
										disabled="disabled">
									4 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-4" 
											type="checkbox" 
											disabled="disabled">
									5 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-5" 
											type="checkbox" 
											disabled="disabled">
								</label>
							</td>
							<td>
								<a href="#" class="info" 
									data-title="<?php echo $habilete->habilete; ?>" 
									data-content="<?php echo $habilete->description; ?>">
										<span class="fa fa-question-circle"></span>
								</a>
							</td>
						</tr>
					<?php endforeach; ?>
				</table>
			</div>
			<div class="col-xs-12 col-md-4">
				<table class="table table-responsive table-striped">
					<?php foreach (array_slice($habiletes, ceil(count($habiletes)/2), ceil(count($habiletes)+1)) as $key => $habilete) : ?>
						<tr>
							<td>
								<?php echo $habilete->habilete; ?>
							</td>
							<td class="form-check form-check-inline align-right">
								<label for="" class="form-check-label">
									1 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-1" 
											type="checkbox">
									2 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-2" 
											type="checkbox" 
											disabled="disabled">
									3 <input class="habilete" 
										name="<?php echo $habilete->habilete; ?>" 
										value="<?php echo $habilete->id; ?>-3" 
										type="checkbox" 
										disabled="disabled">
									4 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-4" 
											type="checkbox" 
											disabled="disabled">
									5 <input class="habilete" 
											name="<?php echo $habilete->habilete; ?>" 
											value="<?php echo $habilete->id; ?>-5" 
											type="checkbox" 
											disabled="disabled">
								</label>
							</td>
							<td>
								<a href="#" class="info" 
									data-title="<?php echo $habilete->habilete; ?>" 
									data-content="<?php echo $habilete->description; ?>">
										<span class="fa fa-question-circle"></span>
								</a>
							</td>
						</tr>
					<?php endforeach; ?>
				</table>
			</div>
			<div class="col-xs-12 col-md-4">
				<div id="card" class="card">
					<h4 class="card-header"><?php echo $habiletes[0]->habilete; ?></h4>
					<div class="card-body">
						<p class="card-text"><?php echo $habiletes[0]->description; ?></p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="row">
					<div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
						<h4>Il vous reste <span id="count">10</span> points à placer.</h4>
						<button type="reset" class="btn btn-success btn-block btn-lg"><span class="fa fa-refresh"></span> Réinitialiser</button>
					</div>
				</div>
				<br><br>
				<div class="row">
					<div class="col-xs-12 col-md-8 col-md-offset-2">
						<button id="submit" class="btn btn-primary btn-block btn-lg" disabled="disabled"><span class="fa fa-save"></span> Sauvegarder et continuer</button>
					</div>
				</div>
			</div>
		</div>

		

		<?php echo form_close(); ?>

<script>
	$(function(){

		$('a.info').on('click',function(e){
			e.preventDefault();
			$('#card .card-header').html($(this).attr('data-title'));
			$('#card .card-text').html($(this).attr('data-content'));
		});

		$("button[type='reset']").on('click', function(e){
			$('#count').html(10);
			$('.form-check-inline label input:first-child').nextAll('.habilete').attr('disabled','disabled');
		});

		$('.habilete').on('change',function(){

			$('#count').html(10 - $('.habilete:checked').length);		

			if ( $(this).is(':checked') ) {
				$(this).next('input').removeAttr('disabled');
			} else {
				var siblings = $(this).nextAll('input');

				$.each(siblings, function(){
					$(this).prop('checked',false).attr('disabled','disabled');
				});
			}

			if($('.habilete:checked').length >= 5){
				$('.habilete:not(":checked")').attr('disabled','disabled');
				$('#submit').removeAttr('disabled');
			} else {
				var input = $('.habilete:checked');
				$.each(input, function(){
					$(this).next('input').removeAttr('disabled');
					$('.form-check-inline label input:first-child').removeAttr('disabled');
				});
				$('#submit').attr('disabled','disabled');
			}
		});
	})
</script>