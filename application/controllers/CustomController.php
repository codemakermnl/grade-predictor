<?php
require 'vendor/autoload.php';
use GuzzleHttp\Psr7\Request;


class CustomController extends CI_Controller
{

    public function index()
    {
        $this->load->view('welcome_message');
    }

    
    public function classifyGrade() {
        $sem1_grade = $this->input->post('sem1_grade');
        $sem2_grade = $this->input->post('sem2_grade');

        $client = new GuzzleHttp\Client(['base_uri' => 'http://127.0.0.1:8000/']);

        $response = $client->post('http://127.0.0.1:8000/classify_grade', [
                GuzzleHttp\RequestOptions::JSON => ['sem1_grade' => $sem1_grade, 'sem2_grade' => $sem2_grade] // or 'json' => [...]
            ]);

        $remark_response = json_decode($response->getBody(), true);

        $remark = '';
        if( !empty($remark_response) ) {
            $remark = $remark_response['remark'];
        }


        print_r($remark);
    }


}
