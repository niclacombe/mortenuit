<?php 
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perso extends CI_Controller {
	
		public function __construct() {
			parent::__construct();
			$this->load->model('perso_model');			
		}

		public function index($id_user)	{

			$data['personnages'] = $this->perso_model->getPersonnages($id_user);

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/index',$data);
			$this->load->view('template/footer');
		}

		public function newPerso($idUser) {
			$data = array();

			$this->load->model('user_model');

			$data['infoJoueur'] = $this->user_model->readProfile($idUser);

			$this->load->model('perso_model');

			$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

			$data['step'] = 1;

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function newPerso2($idUser) {

			$data = array();
			$this->load->library('form_validation');

			$this->form_validation->set_rules('nom', 'Nom', 'trim|required|alpha_numeric_spaces');
			$this->form_validation->set_rules('concept', 'Concept', 'trim|required');
			$this->form_validation->set_rules('clan', 'Clan', 'trim|required');
			$this->form_validation->set_rules('physique', 'Attribut physique', 'trim|required|differs[social]|differs[mental]');
			$this->form_validation->set_rules('social', 'Attribut social', 'trim|required|differs[physique]|differs[mental]');
			$this->form_validation->set_rules('mental', 'Attribut mental', 'trim|required|differs[physique]|differs[social]');
			$this->form_validation->set_rules('nature', 'Nature', 'trim|required|differs[social]|differs[mental]');
			$this->form_validation->set_rules('attitude', 'Attitude', 'trim|required');

			if ($this->form_validation->run() == FALSE) {

				$this->load->model('user_model');

				$data['infoJoueur'] = $this->user_model->readProfile($idUser);

				$this->load->model('perso_model');

				$data['clans'] = $this->perso_model->getClans();
				$data['natures'] = $this->perso_model->getNatures();
				
                $this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso',$data);
				$this->load->view('template/footer');
            }
            else {  

            	$this->perso_model->newPerso($idUser);

            	//STEP 1
            	$this->load->model('user_model');

				$data['infoJoueur'] = $this->user_model->readProfile($idUser);

				$this->load->model('perso_model');

            	$data['clans'] = $this->perso_model->getClans();
				$data['natures'] = $this->perso_model->getNatures();

				//STEP 2
				if($this->input->post('age') == 1 ) :
            		$data['disciplines'] = 	$this->perso_model->getRandStartDisciplines($idUser);
            		$data['random'] = true;
            	else:
            		$data['disciplines'] = 	$this->perso_model->getFixStartDisciplines($idUser);
            		$data['random'] = false;
            	endif;
            	$data['step'] = 2;

            	$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso',$data);
				$this->load->view('template/footer');
            } 
		}

		public function reroll($idPerso, $idUser){
			$this->perso_model->reroll($idPerso);

			//STEP 1
        	$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

			//STEP 2
        	$data['disciplines'] = 	$this->perso_model->getStartDisciplines($idUser);

        	$data['step'] = 2;

	        $this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function newPerso3($idPerso, $idUser){

			$this->perso_model->addStartDisciplines($idPerso);

			//STEP 1
			$this->load->model('user_model');

			$data['infoJoueur'] = $this->user_model->readProfile($idUser);

			$this->load->model('perso_model');

        	$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

			//STEP 2
        	$data['disciplines'] = 	$this->perso_model->getRandStartDisciplines($idUser);

        	//STEP 3
			$data['habiletes'] = $this->perso_model->getStartSkills();
			$data['step'] = 3;
			$data['idPerso'] = $idPerso;

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function newPerso4($idPerso,$idUser){

			//STEP 1
			$this->load->model('user_model');

			$data['infoJoueur'] = $this->user_model->readProfile($idUser);

			$this->load->model('perso_model');

        	$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

			//STEP 2
        	$data['disciplines'] = 	$this->perso_model->getRandStartDisciplines($idUser);

        	//STEP 3
			$data['habiletes'] = $this->perso_model->getStartSkills();
			$data['idPerso'] = $idPerso;

			//STEP 4

			$this->perso_model->addHabiletes($idPerso);


			$data['freebies'] = $this->perso_model->getFreebies($idPerso);

			$this->load->model('influence_model');

			$data['contacts'] = $this->influence_model->getStartContactsBySecteur();
			$data['idPerso'] = $idPerso;

			$data['step'] = 4;

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');

		}

		public function newPerso5($idPerso,$idUser){

			//STEP 1
			$this->load->model('user_model');

			$data['infoJoueur'] = $this->user_model->readProfile($idUser);

			$this->load->model('perso_model');
			
        	$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

			//STEP 2
        	$data['disciplines'] = 	$this->perso_model->getRandStartDisciplines($idUser);

        	//STEP 3
			$data['habiletes'] = $this->perso_model->getStartSkills();
			$data['idPerso'] = $idPerso;

			//STEP 4

			$data['freebies'] = $this->perso_model->getFreebies($idPerso);

			$this->load->model('influence_model');

			$data['contacts'] = $this->influence_model->getStartContactsBySecteur();
			$data['idPerso'] = $idPerso;
			
			
			$data['step'] = 5;
			
			$this->load->model('perso_model');
			$this->perso_model->updateFreebies($idPerso, 15, 'Freebies départ' );
			$this->perso_model->addBackground($idPerso);
			
			$this->load->model('influence_model');

			foreach ($_POST as $key => $value) {
				if (substr($key, 0 ,7) == 'contact' ) {
					$this->influence_model->addContact($idPerso ,$value);
				}
			}

			$this->load->model('perso_model');

			$data['freebies'] = $this->perso_model->getFreebies($idPerso);
			$data['idPerso'] = $idPerso;


			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function newPerso6($idPerso, $idUser){
			$data = array();
			$this->load->library('form_validation');

			$this->form_validation->set_rules('bg', 'Historique de Personnage', 'trim|required|max_length[500]');

			if ($this->form_validation->run() == FALSE) {
				$data['freebies'] = $this->perso_model->getFreebies($idPerso);
				$data['idPerso'] = $idPerso;

				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso5',$data);
				$this->load->view('template/footer');
			} else {
				$this->load->model('perso_model');
				$this->perso_model->updateBG($idPerso);

				$this->perso_model->waitEtat($idPerso, $idUser);

				$data['newPersoAttente'] = true;

				redirect('perso/index/' .$idUser, 'refresh');


			}
		}

		public function selectPlayer(){

			$this->load->model('perso_model');

			$data['joueurs'] = $this->perso_model->getPlayers();

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/selectPlayer',$data);
			$this->load->view('template/footer');
		}

		public function startNewPerso(){
			redirect('perso/newPerso/' .$this->input->post('selectPlayer'),'refresh');
		}
	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>