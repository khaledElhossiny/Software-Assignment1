<?php
require_once("../Controller/PageController.php");
$PageControllerObject=new PageController();
$result=$PageControllerObject->del($_GET['id']);
?>
