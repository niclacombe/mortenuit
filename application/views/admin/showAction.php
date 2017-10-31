<div class="row"><?php echo validation_errors(); ?></div>

<?php echo form_open('admin/approveAction/' .$action->id ); ?>

<input type="hidden" value="<?php echo $action->id_contact; ?>" name="idContact">

<div class="row">
	<div class="form-group col-xs-4">
		<label for="">Date de parution</label>
		<input name="dateParution" class="form-control" type="text" readonly value="<?php echo $action->date_parution; ?>">
	</div>
	<div class="form-group col-xs-4 col-xs-offset-4">
		<label for="">Secteur</label>
		<input name="Nomsecteur" class="form-control" type="text" readonly value="<?php echo $action->nomSecteur; ?>">
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
			<?php for($i = 0; $i <= (intval($action->powerContact) - intval($action->secret) ); $i++) : ?>
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
		<label for="">Commentaires</label>
		<textarea name="commentaires" class="form-control" type="text" ></textarea>
	</div>
</div>

<?php if($action->note ) : ?>
	<div class="row">
		<div class="form-group col-xs-12">
			<label for="">Note pour le validateur</label>
			<textarea name="note" class="form-control" type="text" readonly ><?php echo $action->note; ?></textarea>
		</div>
	</div>
<?php endif; ?>

<div class="row">
	<div class="col-xs-12">
		<h4>Secteurs affectés</h4>
		<div class="row">
			<div class="form-group col-xs-4">
				<label for="" class="form-checkbox-inline"><input name="secteurs" id="allSecteurs" type="checkbox"> Tous les secteurs</label>
			</div>
		</div>
		<div class="row">
		<?php foreach ($secteurs as $secteur) : ?>

			<div class="form-group col-xs-4">
				<label for="" class="form-checkbox-inline">
					<input name="secteurs[] ?>" value="<?php echo $secteur->id; ?>" type="checkbox" <?php if($action->nomSecteur == $secteur->secteur) : echo 'onclick="return false;" checked'; endif; ?> >
						<?php echo $secteur->secteur; ?> 
					</label>
			</div>
		<?php endforeach; ?>
		</div>

	</div>
</div>

<div class="row">
	<div class="col-xs-5">
		<a href="#"><button type="submit" class="btn btn-success btn-block"><span class="fa fa-check"></span> Accepter</button></a>
	</div>
	<div class="col-xs-5 col-xs-offset-2">
		<a href="#"><button type="button" id="refusAction" data-toggle="modal" data-target="#refusActions" class="btn btn-danger btn-block"><span class="fa fa-close"></span> Refuser</button></a>
	</div>
</div>

<?php echo form_close(); ?>

<div class="modal fade" role="dialog" tabindex="-1" id="refusActions">
		<?php echo form_open('admin/refusAction/' .$action->id); ?>

		<input type="hidden" value="<?php echo $action->id_contact; ?>" name="idContact">
		<div class="modal-dialog" role="document">
		    <div class="modal-content">
		    	<div class="modal-header">
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        	<h4 class="modal-title" id="myModalLabel">Refuser une action</h4>	        	
		      	</div>
		      	<div class="modal-body">
		      		<div class="form-group">
		        		<label for="commentaires">Expliquer pourquoi cette action est refusée.</label>

		        		<textarea name="commentaires" class="form-control"></textarea>
		        	</div>	
		    	</div>
		     	<div class="modal-footer">
		        	<button type="submit" class="btn btn-danger"><span class="fa fa-close"></span> Refuser</button>
		      	</div>
		    </div>
		</div>
		<?php echo form_close(); ?>
	</div>

<script>
	$(function(){
		$('#allSecteurs').on('click',function(){
			$('input[type="checkbox"][name="secteurs"]').prop('checked', $(this).is(':checked') );
		});
	});

	$(function(){
		$('#actionNiveau').on('change',function(){
			var secret = parseInt($('input[name=niveauDiscretion]').val()),
				niveauAction = parseInt($('#actionNiveau :selected').val());
			$('input[name="niveauActionFinal"]').val(secret + niveauAction);
		});

		$('#refusAction').on('click',function(){
			
		})
	});
</script>

<!--<pre><?php echo var_dump($action); ?></pre>-->