<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_upldgbr');
	}

	public function index()
	{
		$data['products'] = $this->model_upldgbr->get_allimage();
		$this->load->view('welcome_message', $data);
	}
	
	public function cart(){
		
		$this->load->view('show_cart');
	}
	
	public function clear_cart()
	{
		$this->cart->destroy();
		redirect(base_url());
	}
}
