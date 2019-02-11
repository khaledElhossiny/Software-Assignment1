<?php
require_once("../Public/Database/DB.php");
class PageModel
{
	private $PageID,$PageAddress,$FriendlyName;
	
	/********************************************SETTERS*********************************/
    public function setPageID($PageID){$this->PageID=$PageID;}
	public function setPageAddress($PageAddress){$this->PageAddress=$PageAddress;}
	public function setFriendlyName($FriendlyName){$this->FriendlyName=$FriendlyName;}

	/********************************************GETTERS*********************************/
    public function getPageID(){return $this->PageID;}
	public function getPageAddress(){return $this->PageAddress;}
	public function getFriendlyName(){return $this->FriendlyName;}
	
	/********************************************FUNCTIONS*********************************/
	public function addPage()
	{
		$sql="INSERT INTO `pages`(`PhysicalAdrs`, `FriendlyName`) VALUES ('".$this->PageAddress."','".$this->FriendlyName."')";
		echo $sql;
		$DBConnect=new Database();
		$DBConnect->connect();
		$DBConnect->execute($sql);
	}
    public function searchAll()
    {
        $sql="SELECT * FROM `pages`";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function search()
    {
        $sql="SELECT * FROM `pages` WHERE FriendlyName LIKE '%".$this->FriendlyName."%' ";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit_search()
    {
        $sql="SELECT * FROM `pages` WHERE `PageId` = ".$this->PageID." ";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit()
    {
        $sql="UPDATE `pages` SET `PhysicalAdrs`='".$this->PageAddress."',`FriendlyName`='".$this->FriendlyName."' WHERE `PageId`= ".$this->PageID."";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
    public function del()
    {
        $sql="DELETE FROM `pages` WHERE `PageId`= ".$this->PageID."";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
}
?>
