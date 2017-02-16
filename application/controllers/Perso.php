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
			$data['clans'] = $this->perso_model->newPerso();
			
			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

		public function getRandDiscipline(){
			$discipline1 = $_POST['discipline1'];
			$discipline2 = $_POST['discipline2'];
			$discipline3 = $_POST['discipline3'];

			$data['randDiscipline'] = $this->perso_model->getRandDiscipline($discipline1, $discipline2, $discipline3);
		}
	
	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>