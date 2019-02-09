<?php
require_once("../Public/Database/DB.php");
class PageModel
{
	private $Name,$Password,$userTypeID;
	
	/********************************************SETTERS*********************************/
	public function setUserName($Name){$this->$Name=$Name;}
	public function setPassword($Password){$this->$Password=$Password;}
	public function setUserType($userTypeID){$this->$userTypeID=$userTypeID;}
	
	/********************************************GETTERS*********************************/
    public function getUserName(){return $this->Name;}
    public function getPassword(){return $this->Password;}
    public function getUserType(){return $this->$userTypeID;}
	
	/********************************************FUNCTIONS*********************************/
	public function addUser()
	{
		$sql="INSERT INTO `user`(`Name`, `Password`) VALUES ('".$this->Name."','".$this->Password."')";
		echo $sql;
		$DBConnect=new Database();
		$DBConnect->connect();
		$DBConnect->execute($sql);
	}
}
?>