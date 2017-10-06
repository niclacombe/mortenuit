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

		public function newPerso() {
			$data = array();

			$data['clans'] = $this->perso_model->getClans();
			$data['natures'] = $this->perso_model->getNatures();

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

				$data['clans'] = $this->perso_model->getClans();
				
                $this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso',$data);
				$this->load->view('template/footer');
            }
            else {  

            	$this->perso_model->newPerso($idUser);

            	$data['disciplines'] = 	$this->perso_model->getStartDisciplines($idUser);

		        $this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso2',$data);
				$this->load->view('template/footer');
            } 
		}

		public function reroll($idPerso, $idUser){
			$this->perso_model->reroll($idPerso);

			$data['disciplines'] = 	$this->perso_model->getStartDisciplines($idUser);

	        $this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso2',$data);
			$this->load->view('template/footer');
		}

		public function newPerso3($idPerso, $idUser){

			$this->perso_model->addStartDisciplines($idPerso);

			$data['habiletes'] = $this->perso_model->getStartSkills();
			$data['idPerso'] = $idPerso;

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso3',$data);
			$this->load->view('template/footer');
		}

		public function newPerso4($idPerso,$idUser){

			$this->perso_model->addHabiletes($idPerso);

			$this->load->model('influence_model');

			$data['contacts'] = $this->influence_model->getStartContactsBySecteur();
			$data['idPerso'] = $idPerso;

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso4',$data);
			$this->load->view('template/footer');

		}

		public function newPerso5($idPerso,$idUser){
			echo '<pre>' .var_dump($_POST) .'</pre>';
		}

		

	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>