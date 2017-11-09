<body>
    <div id="wrapper">
<!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url(); ?>">La Malédiction</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <?php if  ($this->session->is_logged_in == false ) : ?>
                <li>
                    <?php
                        $args = array(
                            'class' => 'form-inline',
                        );
                        echo form_open('user/logIn',$args);

                        echo '<div class="form-group">';
                            $args = array(
                                'type'  => 'text',
                                'name'  => 'logIn_courriel',
                                'class' => 'form-control',
                                'placeholder'   => 'Courriel',
                            );
                            echo form_input($args);

                            $args = array(
                                'type'  => 'password',
                                'name'  => 'logIn_password',
                                'class' => 'form-control',
                                'placeholder'   => 'Mot de Passe',
                            );
                            echo form_input($args);

                            $args = array(
                                'class'     => 'btn btn-default'
                            );
                            echo form_submit($args,'Connexion');

                        echo '</div>';

                        echo form_close();
                    ?>
                </li>
                <li><a href="<?php echo base_url(); ?>user/register">Inscription</a></li>
                <?php else: ?>
                    <li><a href="<?php echo base_url(); ?>user/logOut"><span class="fa fa-sign-out"></span>Déconnexion</a></li>
                <?php endif; ?>
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <?php if ($this->session->is_logged_in == true) : ?>
                        <ul class="nav" id="side-menu">                        
                            <li><a href="<?php echo base_url(); ?>user/readProfile/<?php echo $this->session->userdata['user_info']->id; ?>"><span class="fa fa-user"></span> Mon Profil</a></li>
                            <?php if($this->session->user_info->is_admin) : ?>
                                <li>
                                    <a href="#"><span class="fa fa-gavel"></span> Administration<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li><a href="<?php echo site_url('admin/validateActions/'); ?>">Valider les actions</a></li>
                                        <li><a href="<?php echo site_url('admin/validatePersos'); ?>">Valider les personnages</a></li>
                                    </ul>
                                </li>
                            <?php endif; ?>                      
                            <li>
                                <a href="#"><span class="fa fa-newspaper-o"></span> Nouvelles<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li><a href="#"><span class="fa fa-newspaper-o"></span> Lire les Nouvelles</a></li>
                                    <?php if($this->session->user_info->is_admin) : ?>
                                        <li><a href="<?php echo base_url(); ?>news/addNews"><span class="fa fa-file-o"></span> Ajouter une Nouvelle</a></li>
                                    <?php endif; ?>
                                </ul>
                            </li>
                            <li>
                                <a href="<?php echo site_url('perso/index') . '/' .$this->session->user_info->id; ?>"><span class="fa fa-child"></span> Mes Personnages (à venir)<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="<?php echo site_url('perso/index') . '/' .$this->session->user_info->id; ?>">Mes Personnages</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo site_url('perso/newPerso') . '/' .$this->session->user_info->id; ?>">Nouveau Personnage</a>
                                    </li>
                                </ul>
                                
                            </li>
                            <li>
                                <a href="#"><span class="fa fa-users"></span> Influence<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="<?php echo site_url('influence/buyContact/') .$this->session->userdata['activePerso']; ?>"><span class="fa fa-user-plus"></span> Acheter des Contacts</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo site_url('influence/index'); ?>"><span class="fa fa-users"></span> Voir mes Contacts</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo site_url('influence/readActions/') .$this->session->userdata['activePerso']; ?>"><span class="fa fa-user-plus"></span> Lire les actions</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    <?php endif; ?>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="confirmCancel" class="col-md-6 col-xs-12 modalNic">
            <div class="row">
                <h3>Êtes-vous sûr de vouloir supprimer cette nouvelle ?</h3>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <a href="<?php echo base_url(); ?>">
                        <button class="btn btn-block btn-danger"><span class="fa fa-remove fa-reverse"> Non</span></button>
                    </a>
                </div>
                <div class="col-xs-6">
                    <a id="confirmLink" href="<?php echo base_url(); ?>news/deleteNews">
                        <button class="btn btn-block btn-success"><span class="fa fa-check fa-reverse"> Oui</span></button>
                    </a>
                </div>
            </div>
        </div>
        