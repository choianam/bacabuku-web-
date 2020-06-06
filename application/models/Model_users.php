<?php
class Model_users extends CI_Model{

    function getAll(){
		$this->db->select('*');
		$this->db->from('daftar_user');
		$this->db->join('akses', 'daftar_user.id_akses = akses.id_akses');
		$query = $this->db->get();
		return $query;
	}
    public function check_credential()
	{
		$username = set_value('Username');
		$password = set_value('Password');
		
		$hasil = $this->db->where('Username', $username)
						  ->where('Password', $password)
						  ->limit(1)
						  ->get('users');
		
		if($hasil->num_rows() > 0){
			return $hasil->row();
		} else {
			return array();
		}
	}

}