<?php
require_once("../Controller/UserController.php");
$UserControllerObject=new UserController();
$result=$UserControllerObject->del($_GET['id']);
?>
