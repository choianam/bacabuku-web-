<?php 
class Buku extends CI_Controller{
    
    function __construct(){
        parent::__construct();

    }

    function index(){
            $this->load->view('system_view/buku/vw_buku');
    }

    function store(){
            $this->form_validation->set_rules('judul_buku','Judul','required|trim');
            $this->form_validation->set_rules('gambar_buku','Gambar','required|trim');
            $this->form_validation->set_rules('file_buku','File','required|trim');
            $this->form_validation->set_rules('kategori','Kategori','required|trim');
            $this->form_validation->set_rules('pengarang','Pengarang','required|trim');
            $this->form_validation->set_rules('penerbit','Penerbit','required|trim');
            $this->form_validation->set_rules('jumlah_halaman','Jumlah halaman','required|trim');
            $this->form_validation->set_rules('kode_buku','Kode buku','required|trim');

                if ( $this->form_validation->run() ){

                    $data = array(
                        'kode_buku'         =>      $this->input->post('kode_buku'),
                        'judul_buku'        =>      $this->input->post('judul_buku'),
                        'gambar_buku'       =>      $this->input->post('gambar_buku'),
                        'file_buku'         =>      $this->input->post('file_buku'),
                        'kategori_buku'     =>      $this->input->post('kategori'),
                        'pengarang_buku'    =>      $this->input->post('pengarang'),
                        'penerbit_buku'     =>      $this->input->post('penerbit'),
                        'jumlah_halaman'    =>      $this->input->post('jumlah_halaman'),
                    );
                        if ( $this->core_model->add($data,$this->table['buku']) ){
                            $this->session->set_flashdata('message','Data berhasil disimpan');
                            redirect('buku');
                        }else{
                            $this->session->set_flashdata('message','Kesalahan dalam menyimpan');
                            redirect('buku');
                        }
                }else{
                    $this->load->view('system_view/buku/vw_buku');
                }
    }
    
    function list_buku(){
        $data['query'] = $this->core_model->read(NULL,$this->table['buku'])->result();
        
        $this->load->view('system_view/buku/vw_listbuku',$data);
    }

    function aksi_upload(){
        $config['upload_path']          = './upload/';
		$config['allowed_types']        = 'jpg|png|pdf';
		$config['max_size']             = 100;
		$config['max_width']            = 1024;
		$config['max_height']           = 768;
 
		$this->load->library('upload', $config);
 
		if ( ! $this->upload->do_upload('berkas')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('vw_listbuku', $error);
		}else{
			$data = array('upload_data' => $this->upload->data());
			$this->load->view('v_upload_sukses', $data);
		}
	}
    
    function edit($id){
        $data['query'] = $this->core_model->read(array('kode_buku' => $id),$this->table['buku'])->result();
        $this->load->view('system_view/buku/vw_edit',$data);
    }
    
    function simpan_edit(){
            $this->form_validation->set_rules('judul_buku','Judul','required|trim');
            $this->form_validation->set_rules('gambar_buku','Gambar','required|trim');
            $this->form_validation->set_rules('file_buku','File','required|trim');
            $this->form_validation->set_rules('kategori','Kategori','required|trim');
            $this->form_validation->set_rules('pengarang','Pengarang','required|trim');
            $this->form_validation->set_rules('penerbit','Penerbit','required|trim');
            $this->form_validation->set_rules('jumlah_halaman','Jumlah halaman','required|trim');
            $this->form_validation->set_rules('kode_buku','Kode buku','required|trim');
        
                if ( $this->form_validation->run() ){
                    $data = array(
                        'judul_buku'        => $this->input->post('judul_buku'),
                        'gambar_buku'       => $this->input->post('gambar_buku'),
                        'file_buku'         => $this->input->post('file_buku'),
                        'kategori_buku'     => $this->input->post('kategori'),
                        'pengarang_buku'    => $this->input->post('pengarang'),
                        'penerbit_buku'     => $this->input->post('penerbit'),  
                        'jumlah_halaman'    => $this->input->post('jumlah_halaman'),
                    );
                    
                    if ( $this->core_model->edit($data,'kode_buku',$this->input->post('kode_buku'),$this->table['buku'])){
                        $this->session->set_flashdata('message','Data berhasil diedit');
                        redirect('buku/list_buku');
                    }
                }else{
                    $this->load->view('system_view/buku/vw_edit');
                }
    }
    
    function hapus($id){
        if ($this->core_model->remove('kode_buku',$id,$this->table['buku']) ){
            $this->session->set_flashdata('message','Data berhasil dihapus');
            redirect('buku/list_buku');
        }else{
            $this->session->set_flashdata('message','Data berhasil dihapus');
            redirect('buku/list_buku');
        }
            
    }
}