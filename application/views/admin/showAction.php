<div class="row">
	<div class="form-group col-xs-4">
		<label for="">Date de parution</label>
		<input name="idAction" class="form-control" type="text" readonly value="<?php echo $action->date_parution; ?>">
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-4">
		<label for="">Niveau de discrétion</label>
		<input name="niveauDiscretion" class="form-control" type="text" readonly value="<?php echo $action->secret; ?>">
	</div>
	<div class="form-group col-xs-4">
		<label for="">Niveau de l'action</label>
		<select name="niveauAction" id="actionNiveau" class="form-control">
			<?php for($i = 0; $i <= (intval($action->niveauContact) - intval($action->secret) ); $i++) : ?>
				<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
			<?php endfor; ?>
		</select>

	</div>

	<div class="form-group col-xs-4">
		<label for="">Niveau de l'action finale</label>
		<input type="text" name="niveauActionFinal" readonly class="form-control">
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-12">
		<label for="">Description</label>
		<textarea name="actionDescription" class="form-control" type="text" readonly ><?php echo $action->description; ?></textarea>
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-12">
		<label for="">Note pour le validateur</label>
		<textarea name="note" class="form-control" type="text" readonly ><?php echo $action->note; ?></textarea>
	</div>
</div>

<div class="row">
	<div class="col-xs-4">
		<a href="#"><button type="button" class="btn btn-success btn-block"><span class="fa fa-check"></span> Accepter</button></a>
	</div>
	<div class="col-xs-4 col-xs-offset-4">
		<a href="#"><button type="button" class="btn btn-danger btn-block"><span class="fa fa-close"></span> Refuser</button></a>
	</div>
</div>

<script>
	$(function(){
		$('#actionNiveau').on('change',function(){
			var secret = parseInt($('input[name=niveauDiscretion]').val()),
				niveauAction = parseInt($('#actionNiveau :selected').val());
			$('input[name="niveauActionFinal"]').val(secret + niveauAction);
		});
	});
</script>

<!--<pre><?php echo var_dump($action); ?></pre>-->