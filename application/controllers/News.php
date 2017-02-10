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
		$this->news_model->addNews();

		rediect('home','refresh');

	}

}

/* End of file News.php */
/* Location: ./application/controllers/News.php */ ?>