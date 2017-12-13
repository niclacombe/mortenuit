		<div class="row">
			<h3>Étape 2/6</h3>
			<h2>Créer un Personnage</h2>
			<h3>La Malédiction du Sang touche tous les Kindred. Nul ne sait quelles disciplines sont infant aura...</h3>
			<h3>Vous avez trois "points" à distribuer</h3>
			<br>
			<h4>N.B. Vous n'avez que trois (3) relances...</h4>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<?php 
			$data = array(
				'class'	=> 'col-xs-12',
			);
			echo form_open('perso/newPerso3/' .$disciplines[0]['idPerso'] . '/' .$userInfo->id);
		?>
		<div class="row">
			<?php if($disciplines != false): ?>
				<?php foreach ($disciplines as $key => $discipline) : ?>
					<div class="col-xs-12 col-md-4">
						<div class="form-group">
							<label for="">Discipline <?php echo $key+1; ?></label>
							<input type="text" class="form-control" readonly value="<?php echo $discipline['name']; ?>">
						</div>
						<div class="form-group">
							<p>
								<?php echo substr($discipline['description'],0,250) ?>
								<a class="pop" data-pop="discipline<?php echo $key+1; ?>" href="#"> ...<span class="fa fa-question-circle"></span></a>
							</p>
						</div>
						<div class="form-group subContainer">
							<?php foreach ($discipline['sub_disciplines'] as $key2 => $sub) : ?>
								<div class="form-check">
									<label for="" class="form-check-label">
										<input type="checkbox" 
											name="<?php echo $discipline['id']; ?>"
											value="<?php echo $discipline['id'] .'-' .$sub->niveau; ?>"
											class="form-check-input sub"
											<?php if($key2>0): echo 'disabled'; endif; ?> >
										<?php echo $sub->name; ?>
										<a href="#" data-toggle="popover" 
											title="<?php echo $sub->name; ?>" 
											data-content="<?php echo $sub->description; ?>" 
											data-trigger="focus" 
											data-placement="right">
												<span class="fa fa-question-circle"></span>
										</a>
									</label>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
				<?php endforeach; ?>
				<input type="hidden" name="disciplines" value="<?php echo $disciplines[0]['id'] .'-' .$disciplines[1]['id'] .'-' .$disciplines[2]['id'] ?>">
			<?php  endif; ?>			
		</div>

		<br><br>

		<div class="row">
			<?php if($disciplines[0]['reroll'] == 1): ?>
				<div class="col-xs-6 col-md-4 text-right text-danger">
					<h4><span class="fa fa-exclamation-triangle"></span> Attention, ceci est votre DERNIÈRE tentative!</h4>
				</div>
			<?php endif; ?>
			<div class="col-xs-6 col-md-4">
				<a href="<?php echo site_url('perso/reroll/') . $disciplines[0]['idPerso'] . '/' . $userInfo->id; ?>"><button type="button" class="btn btn-success btn-block btn-lg"><span class="fa fa-save"></span> Relancer les Disciplines (<?php echo $disciplines[0]['reroll']; ?>)</button></a>
			</div>
			<div class="col-xs-6 col-md-4 col-xs-offset-3 col-md-offset-4">
				<button id="submit" class="btn btn-primary btn-block btn-lg" disabled="disabled"><span class="fa fa-save"></span> Sauvegarder et continuer</button>
			</div>
		</div>


		<?php
			echo form_close(); 
		?>

		<?php if($disciplines): ?>

			<div class="row">
				<div id="discipline1" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $disciplines[0]['name']; ?></h3>
					<p><?php echo $disciplines[0]['description']; ?></p>
				</div>
				<div id="discipline2" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $disciplines[1]['name']; ?></h3>
					<p><?php echo $disciplines[1]['description']; ?></p>
				</div>
				<div id="discipline3" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $disciplines[2]['name']; ?></h3>
					<p><?php echo $disciplines[2]['description']; ?></p>
				</div>
			</div>

		<?php endif; ?>
			

<script>
	// Enable Question popup
	$(function(){
		$('.fa-question-circle').parent('a').popover();

		$('.disciplinePop').on('click', function(e){
			e.preventDefault();
			$('#toPop').bPopup();
		});
	});

	$(function(){
		$('.pop').on('click',function(){
			var target = '#' + $(this).attr('data-pop');

			$(target).bPopup({
				opacity : 0.8,
			});
		});
	});

	$(function(){
		$('.sub').on('change',function(){
			

			if ( $(this).is(':checked') ) {
				$(this).closest('.form-check').next('.form-check').children('label').children('input').removeAttr('disabled');
			} else {
				var siblings = $(this).closest('.form-check').nextAll('.form-check');//.children('label').children('input').attr('checked',false).attr('disabled','disabled');

				$.each(siblings, function(){
					var input = ($(this).children('label').children('input'));
					$.each(input, function(){
						$(this).prop('checked',false).attr('disabled','disabled');
					});
				});
			}

			if($('.sub:checked').length >= 3){
				$('.sub:not(":checked")').attr('disabled','disabled');
				$('#submit').removeAttr('disabled');
			} else {
				var input = $('.sub:checked');
				$.each(input, function(){
					$(this).closest('.form-check').next('.form-check').children('label').children('input').removeAttr('disabled');
					$('div .subContainer .form-check:first-child label input').removeAttr('disabled');
				});
				$('#submit').attr('disabled','disabled');
			}
		})
	})
</script>
