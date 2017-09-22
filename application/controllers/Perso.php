<?php 
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perso extends CI_Controller {
	
		public function __construct() {
			parent::__construct();
			$this->load->model('perso_model');
			
		}

		public function index()	{
			
		}

		public function newPerso() {
			$data = array();

			$data['clans'] = $this->perso_model->getClans();
			$data['startDisciplines'] = $this->perso_model->getStartDisciplines($data['clans'][0]->id);

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function reloadStartDiscipline($idClan){
			$data['startDisciplines'] = $this->perso_model->getStartDisciplines($idClan);
		}

	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>