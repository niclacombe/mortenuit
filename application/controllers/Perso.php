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

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function newPerso2($id_user) {

			$data = array();
			$this->load->library('form_validation');

			$this->form_validation->set_rules('nom', 'Nom', 'trim|required|alpha_numeric_spaces');
			$this->form_validation->set_rules('concept', 'Concept', 'trim|required');
			$this->form_validation->set_rules('clan', 'Clan', 'trim|required');
			$this->form_validation->set_rules('prim_attr', 'Attribut primaire', 'trim|required|differs["sec_attr"]|differs["tert_attr"]');
			$this->form_validation->set_rules('sec_attr', 'Attribut secondaire', 'trim|required|differs["prim_attr"]|differs["tert_attr"]');
			$this->form_validation->set_rules('tert_attr', 'Attribut tertiaire', 'trim|required|differs["prim_attr"]|differs["sec_attr"]');

			if ($this->form_validation->run() == FALSE) {

				$data['clans'] = $this->perso_model->getClans();
				
                $this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso',$data);
				$this->load->view('template/footer');
            }
            else {  

            	$this->perso_model->newPerso($id_user);   	

		        $this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('perso/newPerso2',$data);
				$this->load->view('template/footer');
            } 
		}

		

	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>