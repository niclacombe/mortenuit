<h3>Ajouter une action à <em><?php echo $contact->nom; ?> ( <?php echo $contact->nomSecteur .' - ' .$contact->niveau ?> )</em></h3>
<h4>Puissance restante : <?php echo $contact->power; ?></h4>
<br>
<h5>NB. Un contact doit être au moins de niveau 2 pour faire des actions discrètes</h5>
<h5>* : Champ obligatoire</h5>
<hr>

<?php echo form_open('influence/addAction/' .$contact->id); ?>

<?php if($contact->niveau > 1): ?>
	<div class="row">
		<div class="form-group col-xs-6 col-md-3 ">
			<label for="niveauSecret">Niveau de discrétion</label>
			<select name="niveauSecret" id="niveauSecret" class="form-control">
				<?php for($i = 1; $i <= $contact->power; $i++) :?>
				<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
			<?php endfor; ?>
			</select>
		</div>
		<div class="form-group col-xs-6 col-md-3 col-md-offset-2">
			<label for="dateParution">Date de la parution*</label>
			<div class='input-group date' id='datetimepicker'>
                <input type='text' name="dateParution" class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
		</div>
	</div>
<?php endif; ?>

<div class="row">
	<div class="form-group col-xs-12 col-md-8">
		<label for="description">Description de l'action*</label>
		<textarea name="actionDescription" id="actionDescription" class="form-control"></textarea>
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-12 col-md-8">
		<label for="note">Note pour le validateur</label>
		<textarea name="note" id="note" class="form-control"></textarea>
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-6 col-xs-offset-6 col-md-3 col-md-offset-5">
		<button class="btn btn-block btn-success" type="submit"><span class="fa fa-check"></span> Soumettre</button>
	</div>
</div>
<?php echo form_close(); ?>

<script>
	$('#datetimepicker input').datepicker({
		format: 'yyyy-mm-dd',
		startDate: '<?php echo date('Y-m-d H:i:s', time()); ?>',
		autoclose: true,
		todayHighlight: true,
	});
</script>