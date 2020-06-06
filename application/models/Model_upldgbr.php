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
       $this->db->insert($this->tabel, $data);
       return TRUE;
    }

    public function get_by_id($kondisi)
    {
        $this->db->from('daftar_buku');
        $this->db->where($kondisi);
        $query = $this->db->get();
        return $query->row();
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