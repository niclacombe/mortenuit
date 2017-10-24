<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Influence extends CI_Controller {
	public function __construct()	{
		parent::__construct();
		$this->load->model('influence_model');
	}

	public function index()	{
		$data = array();

		$this->load->model('perso_model');

		$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);

		$this->load->model('influence_model');

		$data['persoContacts'] = $this->influence_model->getPersoContacts($data['activePerso']->id);

		//** BUY CONTACT MODAL **//
		


		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('influence/index',$data);
		$this->load->view('template/footer');
	}

	public function buyContact($idPerso){

		$data = array();

		$this->load->model('perso_model');
		$data['activePerso'] = $this->perso_model->getActivePerso($idPerso);
		$data['freebies'] = $this->perso_model->getFreebies($idPerso);

		$this->load->model('influence_model');

		$data['secteurs'] = $this->influence_model->getFreeContactsBySecteur($idPerso);

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('influence/buyContact',$data);
		$this->load->view('template/footer');
	}

}

/* End of file Influence.php */
/* Location: ./application/controllers/Influence.php */ ?>