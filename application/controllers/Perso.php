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

			$disciplines = [];
			$numbers = [];

			while (count($disciplines) != 3) { 
				$number = rand(0,23);

				if (array_search($number, $numbers) === FALSE ) {

					$numbers [] = $number;

					if ($number >= 0 && $number <= 3) { $discipline = 1; }//Dominate
	        		if ($number >= 4 && $number <= 6) { $discipline = 2; }//Presence
	        		if ($number >= 7 && $number <= 9) { $discipline = 3; }//Potence
	        		if ($number >= 10 && $number <= 12) { $discipline = 4; }//Auspex
	        		if ($number >= 13 && $number <= 14) { $discipline = 5; }//Celerity
	        		if ($number >= 15 && $number <= 16) { $discipline = 6; }//Animalism
	        		if ($number >= 17 && $number <= 18) { $discipline = 7; }//Fortitude
	        		if ($number >= 19 && $number <= 20) { $discipline = 8; }//Obfuscate
	        		if ($number == 21) { $discipline = 9; }//Protean
	        		if ($number == 22) { $discipline = 10; }//Obtenebration
	        		if ($number == 23) { $discipline = 11; }//Thaumaturgy

					if( array_search($discipline, $disciplines) === FALSE ){
						$disciplines [] = $discipline;
					}
				}
			}

			$data['systeme'] = $this->perso_model->newPerso($disciplines[0], $disciplines[1], $disciplines[2]); 
			
			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('perso/newPerso',$data);
			$this->load->view('template/footer');
		}

	}
	
	/* End of file Perso.php */
	/* Location: ./application/controllers/Perso.php */
?>