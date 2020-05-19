<?php 
defined('BASEPATH') OR exit('No direct access allowed');
class auth extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('Model_userLog');
		$this->load->library('session');
	}

	public function index(){
		$this->load->view('system_view/login/login');
	}

	public function cek_log(){
		$username = $this->input->post('Username');
		$password = $this->input->post('Password');
		$cek = $this->Model_userLog->login($username,$password,'daftar_user')->result();
		if($cek != FALSE){
			foreach ($cek as $row) {
				$user = $row->Username;
				$akses = $row->id_akses;
			}
			$this->session->set_userdata('session_user',$user);
			$this->session->set_userdata('session_akses',$akses);
			redirect('user');
		}else{
			$this->load->view('system_view/login/login');
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url('auth'));
	}
}
?>