<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('admin_model');
	}

	public function index()	{
		
	}

	public function validateActions($error = false, $idAction = null){
		$data = array();

		$data['actions'] = $this->admin_model->getWaitingActions();

		$data['error'] = $error;

		if($error){
			$data['action'] = $this->admin_model->getAction($idAction);

			$this->load->model('influence_model');

			$data['secteurs'] = $this->influence_model->getSecteurs();

			$data['view'] = $this->load->view('admin/showAction', $data, TRUE);
		}

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

		$this->form_validation->set_rules('niveauAction', 'Niveau de l\'action', 'trim|required|greater_than[0]');

		if ($this->form_validation->run() == FALSE) {

			$data['actions'] = $this->admin_model->getWaitingActions();
			
			$data['action'] = $this->admin_model->getAction($idAction);

			$this->load->model('influence_model');

			$data['secteurs'] = $this->influence_model->getSecteurs();

			$data['view'] = $this->load->view('admin/showAction', $data, TRUE);


			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('admin/validateActions', $data);
			$this->load->view('template/footer');
			
		} else {

			$this->load->model('influence_model');
			$this->admin_model->saveAction($idAction);

			/* EMAIL JOUEUR */
			if( $this->input->post('commentaires') != NULL ){
				$joueur = $this->admin_model->getJoueurFromContact($this->input->post('idContact'));
			}

			redirect('admin/validateActions','refresh');
		}

	}

	public function refusAction($idAction){
		$this->load->model('influence_model');
		$this->admin_model->refusAction($idAction);

		$joueur = $this->admin_model->getJoueurFromContact($this->input->post('idContact'));

		echo '<pre>' .var_dump($joueur) .'</pre>';

		/* EMAIL JOUEUR */
		if( $this->input->post('commentaires') != NULL ){

		}

		//redirect('admin/validateActions','refresh');
	}

}

/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */ ?>