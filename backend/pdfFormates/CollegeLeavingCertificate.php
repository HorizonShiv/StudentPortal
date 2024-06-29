<?php

$obj1 = new Get();
$obj1->user_id = $_GET['student_id'];
$obj1->dp_id = $_GET['dp_id'];
$result_sDocINFO  = $obj1->documentProcessStudentById();
$result_sINFO  = $obj1->documentStudentInfoById();

if ($result_sDocINFO->num_rows > 0) {
    foreach ($result_sDocINFO as $row) {
        $student_name=$row['student_name'];
        $document_process_id=$row['dp_id'];
        $print_type=$row['print_type'];
    }
}

if ($result_sINFO->num_rows > 0) {
    foreach ($result_sINFO as $row) {
        $student_father=$row['father_name'];
        $student_branch=$row['branch_id'];
    }
}


if($print_type=="HARD"){
    $header_info = '<html>
        <head>
        </head>
        <body>
            <div height="175px" width="100%"></div>
        </body>
        </html>
        ';
    $bcImg="";
}
elseif($print_type=="SOFT"){
    $header_info = '<html>
        <head>
        </head>
        <body>
            <img src="../images/SETIDOCHEADER.png" height="175px" width="100%"/>
        </body>
        </html>
        ';
    $bcImg="DOCSAL";

    echo "Hard";
}
        $data = '<html>
        <head>
            <style>
                body{
                    font-family: sans-serif;
                    font-size:16px;
                    text-align: justify;
                    text-justify: inter-word; 
                    letter-spacing: 0;   
                    line-height: 1.7;                    
                }
                .container{
                    display:flex;
                    justify-content:center;
                }
                body{
                    background-image: url("../images/'.$bcImg.'.png");
                    background-repeat:no-repeat;
                    background-position: center;
                    background-image-opacity:0.1;
                }
            </style>
        </head>
        <body>

        <table width="100%" style="margin: 100px 0px 50px 0px;">
            <tr>
                <td class="contentDetails">
                <th align="left"><strong>SETI/Transfer/'.$document_process_id.'/'.date("Y").'</strong></th>
                <th align="center"></th>
                <th align="right"><strong>Date: '.date("d-m-Y").'</strong></th>
                </td>
            </tr>
        </table>

        <div align="center"><u><strong>COLLEGE LEAVING CERTIFICATE</strong></u></div>
        <br>
        <p>
        This is to certify that <b>'.$student_name.'</b>
        Enrolment No: <b>'.$student_id.'</b> s/o <b> '.$student_father.' </b>
        resident of <b>AHMEDABAD (GUJARAT)</b> was admitted to this institute for 
        Bachelors of Engineering Four Year Full Time Degree Course in '. $pre_date .'
        <br>
        <br>
        He left this college having passed <b>B.E.('.$student_branch.')
        Examination with First Class with Distinction '.date('Y').'.</b>
        <br>
        <br>
        To the best of my knowledge he bears a good moral character. I wish him all success in life.
        </p>

        <br><br><br><br><br><br>
        <p>
        <b>Dr. Ajay Upadhyaya<br>
        In-Charge Principal<br>
        SAL Engineering &amp; Technical Institute</b><br>
        E-Mail ID: ajay.upadhyaya@sal.edu.in<br>
        Contact No. +91-9909715620<br>
        </p>

        </body>
        
    </html>';

?>
