<?php 

class Bukuu_m extends CI_Model{
    public function get($id = null)
    {
        $this->db->from('daftar_buku');
        if($id != null) {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }

    public function add($post)
    {
        $params = [
            'kode_buku' => $post['kode_buku'],
            'judul_buku' => empty($post['judul_buku']) ? null : $post['judul_buku'],
            'gambar_buku' => $post['gambar_buku'],
            'file_buku' => $post['file_buku'],
            'kategori_buku' => $post['kategori_buku'],
            'pengarang_buku' => $post['pengarang_buku'],
            'penerbit_buku' => $post['penerbit_buku'],
            'jumlah_halaman' => $post['jumlah_halaman']
        ];
        $this->db->insert('daftar_buku', $params);
    }
    public function edit($post)
    {
        $params = [
            'kode_buku' => $post['kode_buku'],
            'judul_buku' => $post['judul_buku'],
            'gambar_buku' => $post['gambar_buku'],
            'file_buku' => $post['file_buku'],
            'kategori_buku' => $post['kategori_buku'],
            'pengarang_buku' => $post['pengarang_buku'],
            'penerbit_buku' => $post['penerbit_buku'],
            'jumlah_halaman' => $post['jumlah_halaman']
        ];
        $this->db->where('id', $post['id']);
        $this->db->update('daftar_buku', $params);
    }
    public function del($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('daftar_buku');
    }
}