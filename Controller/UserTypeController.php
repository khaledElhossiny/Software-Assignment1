<?php
require_once("../Model/UserTypeModel.php");
if(isset($_POST['addusertype']))
{
	$UserTypeController=new UserTypeController();
	$UserTypeController->addUserType();
	header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/AddUserType.php"); //returns to the source page
}
else if(isset($_POST['edit']))
{
    $UserTypeController=new UserTypeController();
    $UserTypeController->edit($_POST['id'],$_POST['usertype']);
   header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/Assign1/View/EditUserType.php"); //returns to the source page
}

class UserTypeController
{
	public function addUserType()
	{
		$UserTypeModel=new UserTypeModel();
		$UserTypeModel->setusertype($_POST['usertype']);
		
		$UserTypeModel->addUserType();
	}
	 public function searchAll()
    {
        $UserTypeModel = new UserTypeModel();
        $result=$UserType->searchAll();
        return $result;
    }
	public function search($str)
    {
		//echo $str;
        $UserTypeModel = new UserTypeModel();
        $UserTypeModel->setuserType($str);
        $result=$UserTypeModel->search();
        return $result;
    }
    public function edit_search($str)
    {
		echo $str;
        $UserTypeModel = new UserTypeModel();
        $UserTypeModel->setuserTypeID($str);
        $result=$UserTypeModel->edit_search();
        return $result;
    }
    public function edit($id,$usertype)
    {
        $UserTypeModel = new UserTypeModel();
        $UserTypeModel->setuserTypeID($id);
        $UserTypeModel->setusertype($usertype);
        $UserTypeModel->edit();
    }
    public function del($id)
    {
        $UserTypeModel = new UserTypeModel();
        $UserTypeModel->setuserTypeID($id);
        $UserTypeModel->del();
    }
}
?>
