<?php 
class IpaApi extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('KIpaApi');
        
    }
    public function Api(){
        $data = $this->KIpaApi->getAll();
        echo json_encode($data->result_array());
    }
    
}