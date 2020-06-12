<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_upldgbr');
	}

	public function index()
	{
		$data['daftar_buku'] = $this->model_upldgbr->all();
		$this->load->view('system_view/welcome_message', $data);
	}
	
	function tambah(){
        $id=$this->input->post('id');
            $info=array(
                'id'=>$this->input->post('id'),
				'judul_buku'=>$this->input->post('judul_buku'),
                'pengarang_buku'=>$this->input->post('pengarang_buku'),
                'penerbit_buku'=>$this->input->post('penerbit_buku')
            );
            $this->model_orders->simpanorder($info);
    }

	public function add_to_cart($id)
	{
		$product = $this->model_upldgbr->find($id);
		$data = array(
					   'id'      => $product->id,
					   'judul_buku'   => $product->judul_buku,
					   'kategori_buku'   => $product->kategori_buku,
					   'pengarang_buku'   => $product->pengarang_buku,
					   'penerbit_buku'   => $product->penerbit_buku
					   
					);

		$this->model_upldgbr->get_insert($data);
		redirect(base_url('welcome/cart'));
	}
	
	public function cart(){
		// displays what currently inside the cart
		//print_r($this->cart->contents());
		$data['order'] = $this->model_upldgbr->get_all(); //query dari model
		$this->load->view('system_view/show_cart', $data);
	}
	
	public function delete($id)
	{

		$where = array('id' => $id);
		
		$this->model_upldgbr->get_del($where,'order');
		
		redirect('welcome/cart');
		
		}

	public function clear_cart()
	{
		$this->cart->destroy();
		redirect(base_url('welcome/cart'));
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */