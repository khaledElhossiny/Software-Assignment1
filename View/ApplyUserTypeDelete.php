<?php
require_once("../Controller/UserTypeController.php");
$UserTypeControllerObject=new UserTypeController();
$result=$UserTypeControllerObject->del($_GET['id']);
?>