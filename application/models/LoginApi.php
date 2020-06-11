<?php
class LoginApi extends CI_model{

  function getAll(){
		$this->db->select('*');
		$this->db->from('daftar_user');
		$this->db->join('akses', 'daftar_user.id_akses = akses.id_akses');
		$query = $this->db->get();
		return $query;
	}
}