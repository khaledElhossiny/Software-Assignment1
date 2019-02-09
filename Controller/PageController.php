<?php
require_once("../Model/PageModel.php");
if(isset($_POST['addPage']))
{
	$PageController=new PageController();
	$PageController->addPage();
	header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/AddPage.php"); //returns to the source page
}
else if(isset($_POST['edit']))
{
    $PageController=new PageController();
    $PageController->edit($_POST['id'],$_POST['pageAdrs'],$_POST['friendlyName']);
    header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/EditPage.php"); //returns to the source page
}
else if(!empty($_GET['id']))
{
    $PageController=new PageController();
    $PageController->delete($_GET['id']);
    //header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/DeletePage.php"); //returns to the source page
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
	public function search($str)
    {
        $PageModel = new PageModel();
        $PageModel->setFriendlyName($str);
        $result=$PageModel->search();
        return $result;
    }
    public function edit_search($str)
    {
        $PageModel = new PageModel();
        $PageModel->setPageID($str);
        $result=$PageModel->edit_search();
        return $result;
    }
    public function edit($id,$adrs,$name)
    {
        $PageModel = new PageModel();
        $PageModel->setPageID($id);
        $PageModel->setPageAddress($adrs);
        $PageModel->setFriendlyName($name);
        $PageModel->edit();
    }
    public function delete($id)
    {
        $PageModel = new PageModel();
        $PageModel->setPageID($id);
        $PageModel->delete();
    }
}
?>
