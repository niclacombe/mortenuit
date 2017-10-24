<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Liste des contacts pour <i><?php echo $activePerso->nom; ?></i></h1>
		</div>

		<div class="row">
			<div class="col-md-6">
				<?php if ( empty($persoContacts) ): ?>
					<h3>Vous n'avez aucun contact actif.</h3>
					<a href="<?php echo site_url('influence/buyContact/') .$activePerso->id; ?> ">
						<h4>Se procurer des contacts</h4>
					</a>
				<?php else : ?>
					<select name="	" id="" class="form-control">
						<option value="">Tous les contacts</option>
					</select>
					<table class="table table-reponsive table-striped">
						<tr>
							<th>Contact</th>
							<th>Secteur - Niveau</th>
							<th>Actions</th>
						</tr>
						<?php foreach ($persoContacts as $contact) : ?>
							<tr>
								<td><?php echo $contact->nom; ?></td>
								<td><?php echo $contact->nomSecteur .' - ' .$contact->niveau; ?></td>
								<td>
									<button class="btn btn-primary"><span class="fa fa-edit"></span></button>
									<button class="btn btn-danger"><span class="fa fa-trash"></span></button>
								</td>
							</tr>
						<?php endforeach; ?>
					</table>
				<?php endif; ?>

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