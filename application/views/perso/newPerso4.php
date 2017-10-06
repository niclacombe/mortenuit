<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
			<h3>Background</h3>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<h3>Il vous reste <span id="freebiesCount">15</span> freebies à distribuer</h3>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12 col-md-4 form-group">
				<table class="table table-responsive">
					<tr>
						<td>Génération</td>
						<td class="form-check-inline form-check">
							<label for="" class="form-check-label">
								12e <input class="checkBG" data-cost="1" type="checkbox">
								&nbsp&nbsp							
								&nbsp11e <input class="checkBG" data-cost="3" type="checkbox" disabled="disabled">
								&nbsp&nbsp
								&nbsp10e <input class="checkBG" data-cost="5" type="checkbox" disabled="disabled">
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
								1 <input class="checkBG" data-cost="1" type="checkbox">
								2 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								3 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								4 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								5 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
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
								1 <input class="checkBG" data-cost="1" type="checkbox">
								2 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								3 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								4 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
								5 <input class="checkBG" data-cost="1" type="checkbox" disabled="disabled">
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
				<select name="secteur" id="secteurSelector" class="form-control">
					<?php foreach ($contacts as $contact) : ?>
						<option value="<?php echo $contact['idSecteur']; ?>"><?php echo $contact['nameSecteur'] ?></option>
					<?php endforeach; ?>					
				</select>
				<?php foreach ($contacts as $secteur) : ?>
					<div class="row sectorContainer" 
					data-idSecteur="<?php echo $secteur['idSecteur']; ?>"
					<?php if($secteur['idSecteur'] != 1 ) : echo 'style="display:none"'; endif; ?>>
						<div class="col-xs-12">
							<ul class="list-unstyled">
								<?php foreach ($secteur['niveaux'] as $niveau) :?>
									<li><?php echo $niveau->niveau .' - ' . $niveau->description; ?></li>
								<?php endforeach; ?>
							</ul>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
			<div class="col-xs-12 col-md-4">
				<?php foreach ($contacts as $secteur) : ?>
					<div class="row sectorContainer" 
					data-idSecteur="<?php echo $secteur['idSecteur']; ?>"
					<?php if($secteur['idSecteur'] != 1 ) : echo 'style="display:none"'; endif; ?>>
						<h4><?php echo $secteur['nameSecteur']; ?> 
							<a href="#" data-toggle="popover" 
								title="<?php echo $secteur['nameSecteur']; ?>" 
								data-content="<?php echo $secteur['description']; ?>" 
								data-trigger="focus" 
								data-placement="right">
									<span class="fa fa-question-circle"></span>
							</a>
						</h4>

						<table class="table table-responsive table-striped">
							<tr>
								<th>Nom du Contact</th>
								<th class="text-center">Niveau</th>
								<th class="text-center">Sélectionner</th>
							</tr>
							<?php foreach ($secteur['contacts'] as $contact) : ?>
								<tr>
									<td><?php echo $contact->nom; ?></td>
									<td class="text-center"><?php echo $contact->niveau ?></td>
									<td class="text-center">
										<input class="checkBG checkContact" 
										type="checkbox" 
										data-id="<?php echo $contact->id; ?>"
										data-cost="<?php echo $contact->niveau ?>" 
										data-secteur="<?php echo $secteur['nameSecteur']; ?>"
										data-nom="<?php echo $contact->nom; ?>">
									</td>
								</tr>
							<?php endforeach; ?>
						</table>
					</div>
				<?php endforeach; ?>
			</div>
			<div id="selection" class="col-xs-12 col-md-4">
				<h4>Sélection</h4>
			</div>
		</div>

	</div>
</div>

<script>

	$(function(){
		$('.fa-question-circle').parent('a').popover();

	});

	$(function(){

		$('#secteurSelector').on('change',function(){
			var idSecteur = $('#secteurSelector :selected').val();
			$('.sectorContainer').hide();
			$('.sectorContainer[data-idSecteur = ' +idSecteur +']').show();
		});

	});

	$(function(){

		$('.checkBG').on('change',function(){
			if( $(this).hasClass('checkContact') ){
				if( $(this).is(':checked') ){
					var append = '<p id="' +$(this).attr('data-id') +'">' +$(this).attr('data-nom') +' - ' +'<i>' +$(this).attr('data-secteur') +'(' +$(this).attr('data-cost') +')' +'</i></p>';
					$('#selection').append(append);
				} else {
					$('#' +$(this).attr('data-id')).remove();
				}
			}

			if( $(this).is(':checked') ){
				$(this).next('.checkBG').removeAttr('disabled');

				var freebies = parseInt($('#freebiesCount').html());
				$('#freebiesCount').html(freebies - parseInt($(this).attr('data-cost')) );


			} else {

				var siblings = $(this).nextAll('input');

				$.each(siblings, function(){
					$(this).prop('checked',false).attr('disabled','disabled');
				});

				var checkedBG = $('.checkBG:checked');
				$.each(checkedBG, function(){
					$('#freebiesCount').html(15 - parseInt($(this).attr('data-cost')) );
				});
			}



		});		

	});

</script>