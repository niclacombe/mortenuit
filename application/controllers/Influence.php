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

		if($data['activePerso'] != NULL) {
			$data['persoContacts'] = $this->influence_model->getPersoContacts($data['activePerso']->id);
		} else {
			$data['persoContacts'] = NULL;
		}

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('influence/index',$data);
		$this->load->view('template/footer');
	}

	public function buyContact($idPerso){

		$data = array();

		$this->load->model('perso_model');
		$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);
		$data['freebies'] = $this->perso_model->getFreebies($idPerso);

		$this->load->model('influence_model');

		$data['secteurs'] = $this->influence_model->getFreeContactsBySecteur($idPerso);

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('influence/buyContact',$data);
		$this->load->view('template/footer');
	}

	public function addContact($idPerso,$idContact){
		
		$this->influence_model->addContact($idPerso,$idContact);

		redirect('/influence/buyContact/' .$idPerso ,'refresh');
	}

	public function editAction($idContact){
		$data = array();
		$data['contact'] = $this->influence_model->getContact($idContact);
		$data['last3Actions'] = $this->influence_model->getLast3Actions($idContact);

		$this->load->view('influence/editAction',$data);
	}

	public function validateAction($idContact){
		$data = array();
		$this->load->library('form_validation');

		$this->form_validation->set_rules('dateParution', 'date de la parution', 'trim|required');
		$this->form_validation->set_rules('actionDescription', 'description de l\'action', 'trim|required|max_length[500]');
		$this->form_validation->set_rules('note', 'Notes', 'trim|max_length[150]');

		if ($this->form_validation->run() == FALSE) {

			$this->load->model('perso_model');

			$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);

			$this->load->model('influence_model');

			$data['contact'] = $this->influence_model->getContact($idContact);
			$data['last3Actions'] = $this->influence_model->getLast3Actions($idContact);
			$data['persoContacts'] = $this->influence_model->getPersoContacts($data['activePerso']->id);

			$data['validation_error'] = $this->load->view('influence/editAction',$data, TRUE);

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('influence/index',$data);
			$this->load->view('template/footer');
        }
        else {


 
        	$this->load->model('perso_model');

			$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);

			$this->load->model('influence_model');

			$this->influence_model->addAction($idContact);

			$data['contact'] = $this->influence_model->getContact($idContact);
			$data['last3Actions'] = $this->influence_model->getLast3Actions($idContact);
			$data['persoContacts'] = $this->influence_model->getPersoContacts($data['activePerso']->id);

			$data['action_success'] = true;

			$data['validation_error'] = $this->load->view('influence/editAction',$data, TRUE);

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('influence/index',$data);
			$this->load->view('template/footer');
		}
	}

	public function readActions($idPerso){

		$data = array();

		//get Dates
		$startDate = date('Y-m-d', strtotime('-1 week'));
		$endDate = date('Y-m-d', time());

		if($this->input->post('startDate')  ){
			$startDate = $this->input->post('startDate');
		}
		if($this->input->post('endDate')  ){
			$endDate = $this->input->post('endDate');
		}

		$data['startDate'] = $startDate;
		$data['endDate'] = $endDate;

		$data['actions'] = $this->influence_model->readActions($idPerso, $startDate, $endDate);

		$data['secteurs'] = $this->influence_model->getSecteurs();

		$this->load->model('perso_model');
		$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);
		$data['freebies'] = $this->perso_model->getFreebies($idPerso);

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('influence/readActions',$data);
		$this->load->view('template/footer');
	}

	public function sortActionsBySector($idPerso){
		$data = array();

		//get Dates
		$startDate = $_POST['startDate'];
		$endDate = $_POST['endDate'];
		$secteurs = $_POST['secteurs'];

		$data['startDate'] = $startDate;
		$data['endDate'] = $endDate;

		$data['actions'] = $this->influence_model->readActions($idPerso, $startDate, $endDate, $secteurs);

		$this->load->model('perso_model');
		$data['activePerso'] = $this->perso_model->getActivePerso($this->session->user_info->id);
		$data['freebies'] = $this->perso_model->getFreebies($idPerso);

		$this->load->view('influence/ajax/sortActionsBySector', $data);

	}

	public function unlockAction($idPerso, $idAction){
		
		$this->influence_model->unlockAction($idPerso, $idAction);

		//redirect
		redirect('/influence/readActions/' .$idPerso ,'refresh');

	}

}

/* End of file Influence.php */
/* Location: ./application/controllers/Influence.php */ ?>