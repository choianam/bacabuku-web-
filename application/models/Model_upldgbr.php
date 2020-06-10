<?php
class Model_upldgbr extends CI_Model {

    
    var $tabel = 'daftar_buku';

    function __construct() {
        parent::__construct();
    }
    //fungsi untuk menampilkan semua data dari tabel database
 function get_allimage() {
        $this->db->from($this->tabel);
        $query = $this->db->get();
        return $query->result();
 }
    public function all(){
    //query semua record di table products
    $hasil = $this->db->get('daftar_buku');
    if($hasil->num_rows() > 0){
        return $hasil->result();
    } else {
        return array();
        }
    }
    public function find($id){
        //Query mencari record berdasarkan ID-nya
        $hasil = $this->db->where('id', $id)
                          ->get('daftar_buku');
        if($hasil->num_rows() > 0){
            return $hasil->row();
        } else {
            return array();
        }
    }
    function get($id)
    {
        $this->db->from('daftar_buku');
        if($id) {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }
    //fungsi insert ke database
    function get_insert($data){
       $this->db->insert('order', $data);
       return TRUE;
    }
    public function get_all(){
        //query semua record di table products
        $hasil = $this->db->get('order');
        if($hasil->num_rows() > 0){
            return $hasil->result();
        } else {
            return array();
            }
    }

    public function getfind($id){
        //Query mencari record berdasarkan ID-nya
        $hasil = $this->db->where('id', $id)
                          ->get('order');
        if($hasil->num_rows() > 0){
            return $hasil->row();
        } else {
            return array();
        }
    }

    public function get_del($id)
	{
        $this->db->delete('id', $id);
        return $this->db->delete('order');
	}

    public function get_by_id($kondisi)
    {
        $this->db->from('daftar_buku');
        $this->db->where($kondisi);
        $query = $this->db->get();
        return $query->row();
    }
    function get_insert2($data){
        $this->db->insert('daftar_buku', $data);
        return TRUE;
     }
    public function update2($data,$kondisi)
  {
      $this->db->update('daftar_buku',$data,$kondisi);
      return TRUE;
  }

  public function delete($where)
  {
      $this->db->where($where);
      $this->db->delete('daftar_buku');
      return TRUE;
  }
  

}

?>