<?php 

class Kategori_m extends CI_Model{

    
    public function get($id = null)
    {
        $this->db->from('kategori');
        if($id != null) {
            $this->db->where('id_kategori', $id);
        }
        $query = $this->db->get();
        return $query;
    }

    public function add($post)
    {
        $params['id_kategori'] = $post['kategori'];
        $params['kategori'] = $post['jenis kategori'];

        $this->db->insert('kategori', $params);
    }

    public function edit($post)
    {
        $params['id_kategori'] = $post['kategori'];
        $params['kategori'] = $post['jenis kategori'];
        $this->db->where('id_kategori', $post['id_kategori']);
        $this->db->update('kategori', $params);
    }


    public function del($id)
    {
        $this->db->where('id_kategori', $id);
        $this->db->delete('kategori');
    }

}