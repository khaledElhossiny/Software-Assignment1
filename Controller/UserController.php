<?php
require_once("../Model/UserModel.php");
if(isset($_POST['addUser']))
{
	$userController=new UserController();
	$userController->addUser();
	//header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/AddUser.php"); //returns to the source page
}
else if(isset($_POST['edit']))
{
    $userController=new UserController();
    $userController->edit($_POST['id'],$_POST['Name'],$_POST['Password']);
    header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/EditUser.php"); //returns to the source page
}
else if(!empty($_GET['id']))
{
    $userController=new UserController();
    $userController->delete($_GET['id']);
    //header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/DeleteUser.php"); //returns to the source page
}
class UserController
{
    public function addUser()
	{
		$UserModel=new UserModel();
		$UserModel->setName($_POST['Name']);
		echo $_POST['Password'];
		$UserModel->setPassword($_POST['Password']);
		$UserModel->addUser();
    }
	
	public function search($str)
    {
        $UserModel = new UserModel();
        $UserModel->setName($str);
        $result=$UserModel->search();
        return $result;
    }
    public function edit_search($str)
    {
        $UserModel = new UserModel();
        $UserModel->setNameID($str);
        $result=$UserModel->edit_search();
        return $result;
    }
    public function edit($id,$name)
    {
        $UserModel = new UserModel();
        $UserModel->setNameID($id);
        $UserModel->setName($name);
        $UserModel->edit();
    }
    public function delete($id)
    {
        $UserModel = new UserModel();
        $UserModel->setNameID($id);
        $UserModel->delete();
    }
}
?>
