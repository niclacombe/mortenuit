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
		$this->load->model('user_model');
		$this->load->library('form_validation');
		$this->load->library('email');

		$data = [];
		
	}

	public function index()	{
	}

	public function register() {
		$this->load->view('template/header');
		$this->load->view('template/nav');
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
			$this->load->view('template/nav');
			$this->load->view('user/register');
			$this->load->view('template/footer');
		}
		else{

			$this->load->library('encryption');

			$data['registerSuccess'] = $this->user_model->addUser();

			$this->email->from('niclacombe@gmail.com', 'Nicolas Lacombe');
			$this->email->to( $this->input->post('courriel') );

			$this->email->subject('La Morte Nuit - Confirmation d\'Inscription');
			$this->email->message("Vous recevez ce courriel parce que vous vous êtes inscrit à l'activité La Morte Nuit.\nPour valider votre compte, veuillez cliquer sur le lien suivant : \n" . base_url() . "/user/validateUser/" .$this->input->post('courriel'));

			$this->email->send();

			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('user/register',$data);
			$this->load->view('template/footer');
		}
	}

	public function validateUser($userEmail) {

		$this->load->model('user_model');
		$data['validateSuccess'] = $this->user_model->validateUser($userEmail);

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('user/register',$data);
		$this->load->view('template/footer');
	}

	public function logIn(){

		$returned = $this->user_model->logIn();
		$data = array();

		$this->load->library('encryption');

		if ($returned != NULL){
			if ( $this->encryption->decrypt( $returned->password ) == $this->input->post('logIn_password') ) {
				$array = array(
					'is_logged_in'	=> true,
					'user_info'		=> $returned
				);
				
				$this->session->set_userdata( $array );
				$data['returned'] = true;
			} 
		} 
		else {
			$data['returned'] = false;
		}

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('home/home',$data);
		$this->load->view('template/footer');


	}

	public function logOut(){
		session_destroy();
		redirect('home','refresh');
	}

	public function readProfile($idUser) {
		$data['userInfo'] = $this->user_model->readProfile($idUser);

		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('user/readProfile',$data);
		$this->load->view('template/footer');

	}

	public function updateEmail($idUser) {
		$this->form_validation->set_rules('new_courriel', 'Nouveau Courriel', 'trim|required|is_unique[users.courriel]|valid_email');

		if($this->form_validation->run() == FALSE){
			$this->load->view('template/header');
			$this->load->view('template/nav');
			$this->load->view('user/readProfile/' . $idUser);
			$this->load->view('template/footer');
		}
		else{
			$data['userInfo'] = $this->user_model->updateEmail($idUser);

			redirect('user/readProfile/' . $idUser, 'refresh');
		}

    }

    public function updatePassword($idUser) {
    	$this->form_validation->set_rules('new_password', 'Mot de passe', 'trim|required|min_length[5]|max_length[15]|alpha_numeric');
		$this->form_validation->set_rules('password_confirm', 'Mot de passe', 'trim|matches[new_password]');

		if($this->form_validation->run() == FALSE){
			$data['success'] = 'fail1';
				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->vars($idUser);
				$this->load->view('user/readProfile', $data);
				$this->load->view('template/footer');
		}
		else{
			$this->load->library('encryption');
			if (  $this->input->post('old_password') == $this->encryption->decrypt( $this->session->user_info->password ) ) {
				$this->user_model->updatePassword($idUser);

				$data['success'] = 'true';


				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->vars($idUser);
				$this->load->view('user/readProfile', $data);
				$this->load->view('template/footer');
			}
			else {
				$data['success'] = 'fail2';
				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->vars($idUser);
				$this->load->view('user/readProfile', $data);
				$this->load->view('template/footer');
			}

		}
		

		

    }
}
