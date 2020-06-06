<?php 
defined('BASEPATH') OR exit('No direct access allowed');
class Auth extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Model_users');
		$this->load->library('session');
	}
	public function index(){
		$this->load->view('system_view/login/login');
	}
	public function check_credential(){
		$data = array('Username' => $this->input->post('Username', TRUE),
						'Password' => $this->input->post('Password', TRUE)
			);
		$this->load->model('model_user'); // load model_user
		$hasil = $this->model_user->cek_user($data);
		if ($hasil->num_rows() == 1) {
			foreach ($hasil->result() as $sess) {
				$sess_data['logged_in'] = 'Sudah Loggin';
				$sess_data['user_id'] = $sess->user_id;
				$sess_data['username'] = $sess->username;
				$sess_data['level'] = $sess->level;
				$this->session->set_userdata($sess_data);
			}
			if ($this->session->userdata('level')=='admin') {
				redirect('admin/dash');
			}
			elseif ($this->session->userdata('level')=='siswa') {
				redirect('siswa/welcome');
			}		
		}
		else {
			echo "<script>alert('Gagal login: Cek username, password!');history.go(-1);</script>";
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('auth');
	}

}
?>