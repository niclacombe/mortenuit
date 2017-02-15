<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<?php 
			$data = array(
				'class'	=> 'col-xs-12',
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
			<h3>Attributs</h3>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Primaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Secondaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Tertiaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
		</div>
		<div class="row">
			<h3>Habiletés</h3>
			<div class="form-group col-md-4 col-xs-12">
				<h4>Physiques</h4>
				<ul class="list-unstyled">
					<li>a</li>
					<li>b</li>
					<li>c</li>
					<li>d</li>
					<li>e</li>
				</ul>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<h4>Sociales</h4>
				<ul class="list-unstyled">
					<li>a</li>
					<li>b</li>
					<li>c</li>
					<li>d</li>
					<li>e</li>
				</ul>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<h4>Mentales</h4>
				<ul class="list-unstyled">
					<li>a</li>
					<li>b</li>
					<li>c</li>
					<li>d</li>
					<li>e</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<h3>Disciplines</h3>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Discipline I</label>
				<input type="text" class="form-control" disabled="disabled" placeholder="random">
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Discipline II</label>
				<input type="text" class="form-control" disabled="disabled" placeholder="random">
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Discipline III</label>
				<input type="text" class="form-control" disabled="disabled" placeholder="random">
			</div>
			<button class="btn btn-primary"><span class="fa fa-refresh"></span> Relancer les disciplines</button>
		</div>
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