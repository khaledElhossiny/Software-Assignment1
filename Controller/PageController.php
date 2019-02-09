<?php
require_once("../Model/PageModel.php");
if(isset($_POST['addPage']))
{
	$PageController=new PageController();
	$PageController->addPage();
	header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/AddPage.php"); //returns to the source page
}
else if(isset($_POST['addUser']))
{
	$PageController=new PageController();
	$PageController->addUser();
	//header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Software/Assign1/View/AddUser.php"); //returns to the source page
}
class PageController
{
	public function addPage()
	{
		$PageModel=new PageModel();
		$PageModel->setPageAddress($_POST['pageAddrres']);
		$PageModel->setFriendlyName($_POST['friendlyName']);
		$PageModel->addPage();
	}
	public function searchPage()
	{
		$PageModel=new PageModel();
		$PageModel->setPageAddress($_POST['pageAddrres']);
		$PageModel->setFriendlyName($_POST['friendlyName']);
		$PageModel->addPage();
	}
	public function addUser()
	{
		$PageModel=new PageModel();
		$PageModel->setName($_POST['Name']);
		$PageModel->setPassword($_POST['Password']);
		$PageModel->addUser();
	}
}
?>
