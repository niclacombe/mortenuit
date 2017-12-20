<?php $userInfo = $this->session->user_info; ?>

<?php if( empty($actions) ) : ?>
	<h3>Aucune action d'influence ne correspond à votre recherche.</h3>
<?php else : ?>
	<h3>Actions du <?php echo $startDate; ?> au <?php echo $endDate; ?></h3>
	<h4>Vous avez <?php echo $freebies->freebies; ?> freebies en banque.</h4>
	<table class="table table-striped table-responsive">
		<tr>
			<th class="col-md-1">Date</th>
			<th class="col-md-2 ">Contact</th>
			<th class="col-md-5">Action</th>
			<?php if($userInfo->is_admin) :?>
				<th class="col-md-4 ">Admin</th>
			<?php endif; ?>
		</tr>
		<?php foreach ($actions as $action) : ?>
			<tr>
				<td><?php echo $action['date_parution']; ?></td>
				<td>
					<?php if ($action['locked'] == false  || $action['contact_owned'] ) : ?>
					<strong>
							<?php if($action['contact_owned']) : ?>
								<span class="fa fa-star"></span>&nbsp
							<?php endif; ?>
							<?php echo $action['nomContact'] .'<em> ( ' .$action['nomSecteur'] .' )</em>'; ?>	
						</strong>
						<br>
						<em><?php echo $action['titre']; ?></em>
					<?php else : ?>
						Action Discrète
					<?php endif;  ?>
				</td>
				<td>
					<?php 
					if ($action['locked'] == false && $action['secret'] == 0) {
						echo $action['description'];
					} elseif (($action['locked'] == false && $action['secret'] > 0) || $action['contact_owned']){
						echo '<em>' .$action['description'] .'<br>--<br>Action discrète ( ' .$action['secret'] .' )';
					} else { ?>
						Action discrète <em>( <?php echo $action['secret']; ?> points )</em>
						<br><br>
						<a href="<?php echo site_url('influence/unlockAction/') .$activePerso->id .'/' .$action['id']; ?>">
							<button class="btn btn-success">
								<span class="fa fa-unlock"></span>
								 Voir cette action (<?php echo $action['secret']; ?> freebies)
							</button>
						</a>
					<?php
						} //endif
					?>									
				</td>
				<?php if($userInfo->is_admin) :?>
					<td><button class="btn btn-primary"><span class="fa fa-edit"></span></button></td>
				<?php endif; ?>						
			</tr>
		<?php endforeach; ?>
	</table>
<?php endif; ?>