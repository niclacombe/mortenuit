

<?php $i = 1 ?>
<?php foreach ($randDiscipline['disciplines'] as $discipline) { ?>
<div class="col-md-8 col-xs-12">
	<div class="form-group col-md-6 col-xs-12">
		<label for="">Discipline <?php echo $i; ?></label>
		<input type="text" class="form-control" disabled="disabled" placeholder="<?php echo $discipline[0]->name; ?>">							
	</div>
	<div class="form-group col-md-6 col-xs-12">
		<?php $j = 1; ?>
		<?php foreach ($randDiscipline['sub_disciplines'][$i-1] as $sub_discipline) { ?>
			<label class="checkbox-inline">
				<input type="checkbox" class="sub_discipline" value="<?php echo $sub_discipline->id ?>"> <?php echo $j; ?>
			</label>
		<?php $j++; ?>
		<?php } ?>
	</div>
</div>
<?php	$i++;
} ?>