<h3>Ajouter une action à <em><?php echo $contact->nom; ?> ( <?php echo $contact->nomSecteur .' - ' .$contact->niveau ?> )</em></h3>
<h4>Puissance restante : <?php echo $contact->power; ?></h4>
<br>
<h5>NB. Un contact doit être au moins de niveau 2 pour aires des actions discrètes</h5>
<hr>

<?php echo form_open('influence/addAction/' .$contact->id); ?>

<div class="form-group col-xs-6 col-md-3">
	<label for="niveauAction">Niveau de l'action</label>
	<select name="niveauAction" id="niveauAction" class="form-control">
		<?php for($i = 1; $i <= $contact->niveau; $i++) :?>
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

<?php echo form_close(); ?>

<script>
	$(function(){
		$('#niveauAction').on('change',function(){
			var niveauContact = parseInt(<?php echo $contact->niveau; ?>),
				niveauAction = parseInt($('#niveauAction :selected').val());

			$('#niveauSecret').html('');

			for (var i = 1; i >= 0; i++) {
				$('#niveauAction').append();
			}
	}
	)
</script>