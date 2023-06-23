<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pagination_model extends CI_Model {

    public function getPaginationData($page_no,$conn) {
        // Set database connection details
        // $db_config = array(
        //     'hostname' => 'localhost',
        //     'username' => 'root',
        //     'password' => '',
        //     'database' => '600000',
        //     'dbdriver' => 'mysqli'
        // );

        // Load the database
        $this->load->database($conn);


        // Set the number of records per page and calculate the offset
        $total_records_per_page = 20;

        $where_value = '1';
        $offset = ($page_no - 1) * $total_records_per_page;

        // Query to get the total number of records
        $total_records_query = $this->db->query("SELECT COUNT(*) AS total_records FROM pagination_table WHERE vv='$where_value'");
        $total_records = $total_records_query->row()->total_records;

        // Calculate the total number of pages
        $total_no_of_pages = ceil($total_records / $total_records_per_page);

        // Query to get the data for the current page
        $result = $this->db->query("SELECT * FROM pagination_table WHERE vv='$where_value' LIMIT $offset, $total_records_per_page");

        // Prepare the data to be passed to the view
        $pagination_data = array(
            'result' => $result->result(),
            'page_no' => $page_no,
            'total_no_of_pages' => $total_no_of_pages
        );

        // Return the pagination data
        return $pagination_data;
    }

}
?>
