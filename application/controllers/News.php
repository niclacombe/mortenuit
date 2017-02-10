<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('news_model');
	}

	public function index()	{
		
	}

	public function addNews() {
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$this->load->view('news/addNews');
		$this->load->view('template/footer');
	}

	public function createNews(){
		$this->news_model->createNews();

		redirect('home','refresh');
	}

}

/* End of file News.php */
/* Location: ./application/controllers/News.php */ ?>