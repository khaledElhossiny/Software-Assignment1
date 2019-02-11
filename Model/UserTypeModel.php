<?php
require_once("../Public/Database/DB.php");
class UserTypeModel
{
	private $userTypeID,$usertype;
	
	/********************************************SETTERS*********************************/
    public function setuserTypeID($userTypeID){$this->userTypeID=$userTypeID;}
	public function setusertype($usertype){$this->usertype=$usertype;}

	/********************************************GETTERS*********************************/
    public function getuserTypeID(){return $this->userTypeID;}
	public function getusertype(){return $this->usertype;}
	/********************************FUNCTIONS********************************************/
	public function addUserType()
	{
		//$sql="INSERT INTO `usertype`(`UserType`) VALUES '(".$this->usertype.")'";
		$sql="INSERT INTO `usertype`(`UserType`) VALUES ('".$this->usertype."')";
		echo $sql;
		$DBConnect=new Database();
		$DBConnect->connect();
		$DBConnect->execute($sql);
	}
    public function search()
    {
        $sql="SELECT * FROM `usertype` WHERE UserType LIKE '%".$this->usertype."%' ";
        //echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit_search()
    {
        $sql="SELECT * FROM `usertype` WHERE `UserTypeId` = ".$this->userTypeID." ";
       // echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit()
    {
        $sql="UPDATE `usertype` SET `UserTypeId`='".$this->userTypeID."',`UserType`='".$this->usertype."' WHERE `UserTypeId`= ".$this->userTypeID."";
        //echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
    public function del()
    {
        $sql="DELETE FROM `usertype` WHERE `UserTypeId`= ".$this->userTypeID."";
        //echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
}
?>
