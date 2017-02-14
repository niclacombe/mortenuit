<div id="page-wrapper">
	<div class="page-wrapper">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<?php 
			$data = array(
				'class'	=> 'col-md-6 col-xs-12',
			);
			echo form_open('perso/CreatePerso',$data );
		?>
		<div class="row">
			<div class="col-md-6 col-xs-12">

			
				<div class="form-group col-md-6 col-xs-12">
					<label for="nom">Nom :</label>
					<input type="text" name="nom" class="form-control" placeholder="Nom">
				</div>

				<div class="form-group col-md-6 col-xs-12">
					<label for="concept">Concept :</label>
					<input type="text" name="concept" class="form-control" placeholder="Concept">
				</div>

				<div class="form-group col-md-6 col-xs-12">
					<label for="clan">Clan :</label>
					<select name="clan" class="form-control" id="select_clan">
						<?php foreach ($clans as $clan) { ?>
							<option value="$clan->id"><?php echo $clan->name ?></option>
						<?php } //end Foreach ?>
					</select>

				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-xs-12">
				<div class="form-group col-md-4 col-xs-12">
					<label for=""></label>
					<input type="text" class="form-control">
				</div>
				<div class="form-group col-md-4 col-xs-12">
					<label for=""></label>
					<input type="text" class="form-control">
				</div>
				<div class="form-group col-md-4 col-xs-12">
					<label for=""></label>
					<input type="text" class="form-control">
				</div>
			</div>
		</div>
		<div class="row"></div>
		<div class="row">
			<?php

				$data = array(
					'class'		=> 'btn btn-danger',
					'id'		=> 'btnSubmit',
					'disabled'	=> 'disabled',
				);

				echo form_submit($data,'Soumettre');

				echo form_close(); 
			?>
			
		</div>


		</div>
	</div>
</div>