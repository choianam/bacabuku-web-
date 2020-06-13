<?php
class KIpaApi extends CI_model{

  function getAll(){
		$this->db->select('*');
		$this->db->from('daftar_buku');
		$this->db->where('kategori=IPA');
		$query = $this->db->get();
		return $query;
	}
}