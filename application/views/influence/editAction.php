<h3>Ajouter une action à <em><?php echo $contact->nom; ?> ( <?php echo $contact->nomSecteur .' - ' .$contact->niveau ?> )</em></h3>
<h4>Puissance restante : <?php echo $contact->power; ?></h4>
<br>
<h5>NB. Un contact doit être au moins de niveau 2 pour faire des actions discrètes</h5>
<hr>

<?php echo form_open('influence/addAction/' .$contact->id); ?>

<div class="form-group col-xs-6 col-md-3">
	<label for="niveauAction">Niveau de l'action</label>
	<select name="niveauAction" id="niveauAction" class="form-control">
		<?php for($i = 1; $i <= $contact->power; $i++) :?>
			<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
		<?php endfor; ?>
	</select>
</div>

<?php if($contact->niveau > 1): ?>

	<div class="form-group col-xs-6 col-md-3 col-md-offset-3">
		<label for="niveauSecret">Niveau de discrétion</label>
		<select name="niveauSecret" id="niveauSecret" class="form-control">
		</select>
	</div>
<?php endif; ?>

<div class="form-group">
		<label for="description">Description de l'action</label>
		<textarea name="actionDescription" id="actionDescription" class="form-control"></textarea>
	</div>

<?php echo form_close(); ?>

<script>
	$(function(){
		$('#niveauAction').on('change',function(){
			var niveauContact = parseInt(<?php echo $contact->power; ?>),
				niveauAction = parseInt($('#niveauAction :selected').val());

			$('#niveauSecret').html('');

			for (var i = 0; i <= (niveauContact - niveauAction); i++) {
				$('#niveauSecret').append('<option value="' +i +'">' +i +'</option>');
			}
		});
	});
</script>