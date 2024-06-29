<?php

require_once("../backend/cls_select.php");

$obj = new Get();
$obj->UserIdForFooter = 'Admin';
$obj->clg_id = 1;
$result_FooterStamp = $obj->GetFooterStampByClg();

print_r($result_FooterStamp);
if ($result_FooterStamp->num_rows > 0) {
    foreach ($result_FooterStamp as $row) { 

    }
}


?>