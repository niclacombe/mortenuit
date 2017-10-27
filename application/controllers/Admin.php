<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('admin_model');
	}

	public function index()	{
		
	}

	public function validateActions(){
		$data = array();

		$data['actions'] = $this->admin_model->getWaitingActions();

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('admin/validateActions', $data);
		$this->load->view('template/footer');
	}

	public function showAction($idAction){

		$data = array();

		$data['action'] = $this->admin_model->getAction($idAction);

		$this->load->model('influence_model');

		$data['secteurs'] = $this->influence_model->getSecteurs();

		$this->load->view('admin/showAction', $data);

	}

	public function approveAction($idAction){
		$this->load->library('form_validation');
	}

}

/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */ ?>