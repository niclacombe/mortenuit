<?php foreach ($randDiscipline as $key => $discipline) { ?>
	<div class="form-group col-md-4 col-xs-12">
		<label for="">Discipline <?php echo $key+1; ?></label>
		<input type="text" class="form-control" disabled="disabled" placeholder="<?php echo $discipline->name; ?>">
	</div>
<?php } ?>