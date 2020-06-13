<?php 
class BukuApi extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('BookApi');
        
    }
    public function Api(){
        $data = $this->BookApi->getAll();
        echo json_encode($data->result_array());
    }
    
}