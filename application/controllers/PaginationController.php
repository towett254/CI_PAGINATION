<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PaginationController extends CI_Controller {

    public function index() {
        // Load the model
        $this->load->model('pagination_model');
        
        // Get the page number from the query string
        $page_no = $this->input->get('page_no');
        
        // Set the default page number if not provided
        if (empty($page_no)) {
            $page_no = 1;
        }
        
                $conn = new mysqli($this->db->hostname,
            $this->db->username, $this->db->password, $this->db->database);


        // Get the pagination data from the model
        $pagination_data = $this->pagination_model->getPaginationData($page_no,$conn);
        
        // Load the view and pass the pagination data
        $this->load->view('pagination_view', $pagination_data);
    }

}
?>
