<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h1>Liste des contacts pour <i><?php echo $activePerso->nom; ?></i></h1>
		</div>
		
		<?php echo var_dump($persoContacts); ?>

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