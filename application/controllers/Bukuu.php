<?php 
class Bukuu extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('bukuu_m');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data['query'] = $this->bukuu_m->get();
        
        $this->load->view('system_view/buku/buku_data',$data);
    }

    public function add() {
        $bukuu = new stdClass();
        $bukuu->judul_buku = null;
        $bukuu->gambar_buku = null;
        $bukuu->file_buku = null;
        $bukuu->kategori_buku = null;
        $bukuu->pengarang_buku = null;
        $bukuu->penerbit_buku = null;
        $bukuu->jumlah_halaman = null;
        $bukuu->kode_buku = null;
        $data = array(
            'page' => 'add',
            'row' => $bukuu
        );
        $this->load->view('system_view/buku/bukuu_form',$data);
    }

    public function edit($id)
    {
        $query = $this->bukuu_m->get($id);
        if($query->num_rows()>0) {
             $bukuu = $query->row();
             $data = array(
                'page' => 'edit',
                'row' => $bukuu
            );
            $this->load->view('system_view/buku/bukuu_form',$data);
        } else {
            echo "<script>alert('Data tidak ditemukan');";
            echo "window.location='".site_url('bukuu')."';</script>";
        }
    }
    public function process()
    {
        $post = $this->input->post(null, TRUE);
        if(isset($_POST['add'])){
            $this->bukuu_m->add($post);
        } else {
            $config['upload_path']  = './uploads/buku/';
            $config['allowed_types'] = 'jpg|png|pdf';
            $config['max_size']       = 2048;
            
            $this->load->library('upload', $config);

            if(@$_FILES['gambar_buku']['name'] != null){
                if($this->upload->do_upload('gambar_buku')){
                    $post['gambar_buku'] = $this->upload->data('file_name');
                    
                    $this->bukuu_m->add($post);
                }else{ 
                    $error = $this->upload->display_errors();
                    $this->session->set_flashdata('error', $error);
                }

            }
        }
        if($this->db->affected_rows() > 0){
            echo "<script>alert('Data Berhasil Di Simpan');</script>";
        }
        echo "<script>window.location='".site_url('bukuu')."';</script>";
    }
    public function del($id)
    {
        $this->bukuu_m->del($id);
        if($this->db->affected_rows() > 0){
            echo "<script>alert('Data Berhasil Di Hapus');</script>";
        }
        echo "<script>window.location='".site_url('bukuu')."';</script>";
    }

}