<?php
require_once("../Model/userModel.php");
if(isset($_POST['addUser']))
{
	$userController=new userController();
	$userController->addUser();
	header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Software-Assignment1/View/AddUser.php"); //returns to the source page
}
else if(isset($_POST['edit']))
{
    $userController=new userController();
    $userController->edit($_POST['id'],$_POST['Name'],$_POST['Password']);
    header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Software-Assignment1/View/EditUser.php"); //returns to the source page
}
else if(!empty($_GET['id']))
{
    $userController=new userController();
    $userController->delete($_GET['id']);
    //header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/DeleteUser.php"); //returns to the source page
}
class userController
{
    public function addUser()
	{
		$userModel=new userModel();
		$userModel->setName($_POST['Name']);
		$userModel->setPassword($_POST['Password']);
		$userModel->addUser();
    }
	
	public function search($str)
    {
        $userModel = new userModel();
        $userModel->setName($str);
        $result=$userModel->search();
        return $result;
    }
    public function edit_search($str)
    {
        $userModel = new userModel();
        $userModel->setNameID($str);
        $result=$userModel->edit_search();
        return $result;
    }
    public function edit($id,$name)
    {
        $userModel = new userModel();
        $userModel->setNameID($id);
        $userModel->setName($name);
        $userModel->edit();
    }
    public function delete($id)
    {
        $userModel = new userModel();
        $userModel->setNameID($id);
        $userModel->delete();
    }
}
?>
