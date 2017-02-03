<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct() {
		
		parent::__construct();
		//$this->load->model('user_model');
		$this->load->helper('form');
		$this->load->library('form_validation');
		
	}

	public function index()	{
	}

	public function register() {
		$this->load->view('template/header');
		$this->load->view('user/register');
		$this->load->view('template/footer');
	}

	public function addUser() {
		$this->form_validation->set_rules('prenom', 'Prénom', 'trim|required');
		$this->form_validation->set_rules('nom', 'Nom', 'trim|required');
		$this->form_validation->set_rules('courriel', 'Courriel', 'trim|required|is_unique[users.courriel]|valid_email');
		$this->form_validation->set_rules('password', 'Mot de passe', 'trim|required|min_length[5]|max_length[15]|alpha_numeric');
		$this->form_validation->set_rules('password2', 'Mot de passe', 'trim|matches[password]');

		if($this->form_validation->run() == FALSE){
			$this->load->view('template/header');
			$this->load->view('user/register');
			$this->load->view('template/footer');
		}
		else{

			$this->load->library('encryption');

			$this->load->model('user_model');
			$data['register'] = $this->user_model->addUser();


			$this->load->view('template/header');
			$this->load->view('user/register');
			$this->load->view('template/footer');
		}

	}
}
