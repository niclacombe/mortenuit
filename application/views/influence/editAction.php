<h3>Ajouter une action à <em><?php echo $contact->nom; ?> ( <?php echo $contact->nomSecteur .' - ' .$contact->niveau ?> )</em></h3>
<h4>Puissance restante : <?php echo $contact->power; ?></h4>
<br>
<h5>NB. Un contact doit être au moins de niveau 2 pour faire des actions discrètes</h5>
<h5>* : Champ obligatoire</h5>
<hr>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#lastActions"><span class="fa fa-calendar"></span> 3 Dernières actions </button>

<div class="row"><?php echo validation_errors(); ?></div>

<?php echo form_open('influence/validateAction/' .$contact->id); ?>

<input type="hidden" name="idContact" value="<?php echo $contact->id; ?>">

<?php if(isset($action_success)): ?>
	<h4><span class="fa fa-check"></span> Action envoyée avec succès!</h4> 
<?php
	else :
?>

	<?php if($contact->niveau > 1): ?>
		<div class="row">
			<div class="form-group col-xs-6 col-md-3 ">
				<label for="niveauSecret">Niveau de discrétion</label>
				<select name="niveauSecret" id="niveauSecret" class="form-control">
					<?php for($i = 0; $i <= $contact->power; $i++) :?>
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

	<div class="modal fade" role="dialog" tabindex="-1" id="lastActions">
		<div class="modal-dialog" role="document">
		    <div class="modal-content">
		    	<div class="modal-header">
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        	<h4 class="modal-title" id="myModalLabel">Dernières actions de <?php echo $contact->nom; ?></h4>
		      	</div>
		      	<div class="modal-body">
		      		
		      			<table class="table table-striped">
		      				<tr>
		      					<th>Date de Parution</th>
		      					<th>Description</th>
		      					<th>Niveau de l'Action</th>
		      					<th>Niveau de Discrétion</th>
		      				</tr>
		      				<?php foreach ($last3Actions as $action) : ?>
		      				<tr>
		      					<td><?php echo $action->date_parution; ?></td>
		      					<td><?php echo $action->description; ?></td>
		      					<td><?php echo $action->niveau; ?></td>
		      					<td><?php echo $action->secret; ?></td>
		      				</tr>
		      				<?php endforeach; ?>
		      			</table>
		      		
		    	</div>
		    </div>
		</div>
	</div>
	<?php echo form_close(); ?>

<?php endif; ?>

<script>
	$('#datetimepicker input').datepicker({
		format: 'yyyy-mm-dd',
		startDate: '<?php echo date('Y-m-d H:i:s', time()); ?>',
		autoclose: true,
		todayHighlight: true,
	});
</script>