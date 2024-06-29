<?php

$obj1 = new Get();
$obj1->user_id = $_GET['student_id'];
$obj1->dp_id = $_GET['dp_id'];
$result_sDocINFO  = $obj1->documentProcessStudentById();
$result_sDetails = $obj1->GetStudetnById();

if ($result_sDocINFO->num_rows > 0) {
    foreach ($result_sDocINFO as $row) {
        $student_name=$row['student_name'];
        $document_process_id=$row['dp_id'];
        $print_type=$row['print_type'];
        $faculty_id=$row['faculty_id'];
        $admin_id=$row['admin_id'];

    }
}


if ($result_sDetails->num_rows > 0) {
    foreach ($result_sDetails as $row) {
        $clg_id=$row['clg_id'];
    }
}


if($faculty_id==null || $faculty_id==""){
    
    $obj1->UserIdForFooter = $admin_id;
    $obj1->clg_id = $clg_id;
    $result_FooterStamp = $obj1->GetFooterStampByClg();

    // print_r($result_FooterStamp);
    if ($result_FooterStamp->num_rows > 0) {
        foreach ($result_FooterStamp as $row) { 
            $userName=$row['userName'];
            $userPosition=$row['userPosition'];
            $userClg=$row['userClg'];
            $userMail=$row['userMail'];
            $userNumber=$row['userNumber'];
        }
    }
}
else{
    $obj1->UserIdForFooter = $faculty_id;
    $obj1->clg_id = $clg_id;
    $result_FooterStamp = $obj1->GetFooterStampByClg();

    // print_r($result_FooterStamp);
    if ($result_FooterStamp->num_rows > 0) {
        foreach ($result_FooterStamp as $row) { 
            $userName=$row['userName'];
            $userPosition=$row['userPosition'];
            $userClg=$row['userClg'];
            $userMail=$row['userMail'];
            $userNumber=$row['userNumber'];
        }
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
                <th align="left"><strong>SETI/Bonafide/'.$document_process_id.'/' . date("Y") . '</strong></th>
                <th align="center"></th>
                <th align="right"><strong>Date: ' . date("d-m-Y") . '</strong></th>
                </td>
            </tr>
        </table>

        <div align="center"><u><strong>BONAFIDE CERTIFICATE</strong></u></div>
        <br>
        <p>
        This is to certify that <b>'.$student_name.'
        (Enrollment No.-'.$student_id.')</b> is a Bonafide Student of<b>
        SAL Engineering &amp; Technical Institute</b>, Ahmedabad from
        Academic Year 2019. The Student is studying Bachelor of
        Engineering (B.E.) in Computer Engineering from <b>SAL
        Engineering &amp; Technical Institute</b>. This College is affiliated
        to Gujarat Technological University.
        </p>

        <br><br><br><br><br><br>
        <p>
        <b>'.$userName.'<br>
        '.$userPosition.'<br>
        '.$userClg.'</b><br>
        E-Mail ID: '.$userMail.'<br>
        Contact No. '.$userNumber.'<br>
        </p>

        </body>
        
    </html>';

?>