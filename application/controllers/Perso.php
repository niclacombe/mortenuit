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
			$disciplines = [];
			for ($i=0; count($disciplines) <= 2 ; $i++) { 
				$discipline = rand(0,24);



				if( array_search($discipline, $disciplines) === FALSE) {
					$disciplines [] = $discipline;
				}
			}

			return $disciplines;
		}
	
	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>