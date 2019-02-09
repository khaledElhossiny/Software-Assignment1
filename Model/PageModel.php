<?php
require_once("../Public/Database/DB.php");
class PageModel
{
	private $PageAddress,$FriendlyName;
	
	/********************************************SETTERS*********************************/
	public function setPageAddress($PageAddress){$this->PageAddress=$PageAddress;}
	public function setFriendlyName($FriendlyName){$this->FriendlyName=$FriendlyName;}
	public function setName($Name){$this->Name=$Name;}
	public function setPassword($Password){$this->Password=$Password;}

	/********************************************GETTERS*********************************/
	public function getPageAddress(){return $this->PageAddress;}
	public function getFriendlyName(){return $this->FriendlyName;}
	public function getID(){return $this->userTypeID;}
	
	/********************************************FUNCTIONS*********************************/
	public function addPage()
	{
		$sql="INSERT INTO `pages`(`PhysicalAdrs`, `FriendlyName`) VALUES ('".$this->PageAddress."','".$this->FriendlyName."')";
		echo $sql;
		$DBConnect=new Database();
		$DBConnect->connect();
		$DBConnect->execute($sql);
	}
}
?>
