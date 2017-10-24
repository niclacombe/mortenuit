<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<div class="row">
			<h3>Achat de contacts d'influence</h3>
			<h4>Vous disposez de <?php echo $freebies->freebies; ?> freebies</h4>
			<div class="row">
				<div class="form-group col-md-3">
					<select name="" id="secteurSelector" class="form-control">
						<?php foreach ($secteurs as $secteur) : ?>
							<option value="<?php echo $secteur['idSecteur']; ?>"><?php echo $secteur['nameSecteur']; ?></option>
						<?php endforeach; ?>
						
					</select>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="secteur col-md-6 col-md-offset-3">
				<h5>NB. Un contact ne peut être acheté durant les 3 semaines suivant son achat par un autre personnage.</h5>
				<table class="table table-responsive table-striped">
					<tr>
						<th>Contact</th>
						<th>Secteur - Niveau</th>
						<th>Actions</th>
					</tr>
				<?php foreach ($secteurs as $secteur) : ?>
					<?php foreach ($secteur['contacts'] as $contact) : ?>
						<tr class="sectorContainer" 
							data-idSecteur="<?php echo $secteur['idSecteur']; ?>" 
							<?php if($secteur['idSecteur'] != 1 ) : echo 'style="display:none"'; endif; ?> >
							<td><?php echo $contact->nom; ?></td>
							<td><?php echo $secteur['nameSecteur'] .' - ' .$contact->niveau; ?></td>
							<td>
								<a href="<?php echo site_url('influence/addContact/') .$activePerso->id .'/' .$contact->id; ?>">
									<button class="btn btn-success btn_addContact" 
										<?php if($contact->date_protection > date('Y-m-d') || $freebies->freebies < $contact->niveau): echo 'disabled="disabled"'; endif; ?>
										data-idContact="<?php echo $contact->id; ?>" >
										<span class="fa fa-user-plus"></span>
									</button>
								</a>
							</td>
						</tr>
					<?php endforeach; ?>								
				<?php endforeach; ?>
				</table>
			</div>
		</div>

	</div>
</div>

<script>
	/* Switch sector contacts list */
	$(function(){

		$('#secteurSelector').on('change',function(){
			var idSecteur = $('#secteurSelector :selected').val();
			$('.sectorContainer').hide();
			$('.sectorContainer[data-idSecteur = ' +idSecteur +']').show();
		});

	});



</script>