<?php 
class Kategori extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('kategori_m');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data['query'] = $this->kategori_m->get();
        
        $this->load->view('system_view/kategori/R_kategori',$data);
    }

    public function add()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('kategori', 'id_kategori', 'required');
        $this->form_validation->set_rules('jenis kategori', 'kategori', 'required');
        
        $this->form_validation->set_message('required', '%s masih kosong, silahkan isi');
        if ( $this->form_validation->run() == FALSE ){
                $this->load->view('system_view/kategori/C_kategori');
        }else{
            $post = $this->input->post(null, TRUE);
            $this->kategori_m->add($post);
            if($this->db->affected_rows() > 0){
                echo "<script>alert('Data Berhasil Di Simpan');</script>";
            }
            echo "<script>window.location='".site_url('kategori')."';</script>";
        }
    }

    public function edit($id)
    {

        $this->form_validation->set_rules('kategori', 'id_kategori', 'required');
        $this->form_validation->set_rules('jenis kategori', 'kategori', 'required');
        
        $this->form_validation->set_message('required', '%s masih kosong, silahkan isi');
        if ( $this->form_validation->run() == FALSE ){
                $query = $this->kategori_m->get($id);
                if($query->num_rows() > 0){
                    $data['row'] = $query->row();
                    $this->load->view('system_view/kategori/U_kategori',$data);
                } else {
                    echo "<script>alert('Data Berhasil Di Simpan');";
                    echo "window.location='".site_url('kategori')."';</script>";
                }
                
        }else{
            $post = $this->input->post(null, TRUE);
            $this->kategori_m->edit($post);
            if($this->db->affected_rows() > 0){
                echo "<script>alert('Data Berhasil Di Simpan');</script>";
            }
            echo "<script>window.location='".site_url('kategori')."';</script>";
        }
    }
    function kategori_check() {
        $post = $this->input->post(null, TRUE);
        $query= $this->db->query("SELECT * FROM kategori WHERE kategori = '$post[kategori]' AND id_kategori != '$post[id_kategori]'");
        if($query->num_rows() > 0) {
            $this->form_validation->set_message('kategori_check', '{field} ini sudah ada bos');
            return FALSE;
        } else {
            return TRUE;
        }
    }
    public function del()
    {
        $id = $this->input->post('id_kategori');
        $this->kategori_m->del($id);

        if($this->db->affected_rows() > 0){
            echo "<script>alert('Data Berhasil Di Hapus');</script>";
        }
        echo "<script>window.location='".site_url('kategori')."';</script>";
    }

    

}
