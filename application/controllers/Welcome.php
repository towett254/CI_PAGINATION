<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{

		$this->load->helper('url');
     $this->load->database();

		//$this->load->view('welcome_message');

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
        
///print_r($pagination_data);

        // Load the view and pass the pagination data
        $this->load->view('pagination_view', $pagination_data);
    

	}
}
