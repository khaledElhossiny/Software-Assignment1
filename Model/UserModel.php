<?php
require_once("../Public/Database/DB.php");
class UserModel
{
	private $NameID,$Name,$Password;
	
	/********************************************SETTERS*********************************/
    public function setNameID($NameID){$this->NameID=$NameID;}
	public function setAddUser($addUser){$this->addUser=$addUser;}
    public function setName($Name){$this->Name=$Name;}
	public function setPassword($Password){$this->Password=$Password;}
	

	/********************************************GETTERS*********************************/
    public function getNameID(){return $this->NameID;}
    public function getName(){return $this->Name;}
    public function getPassword(){return $this->Password;}
    public function getUserType(){return $this->userTypeID;}
	
	/********************************************FUNCTIONS*********************************/

    public function search()
    {
        $sql="SELECT * FROM `user` WHERE Name LIKE '%".$this->Name."%' ";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit_search()
    {
        $sql="SELECT * FROM `user` WHERE `Id` = ".$this->NameID." ";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $result=$DBConnect->execute($sql);
        return $result;
    }
    public function edit()
    {
        $sql="UPDATE `user` SET `Name`='".$this->Name."' WHERE `Id`= ".$this->NameID."";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
    public function del()
    {
        $sql="DELETE FROM `user` WHERE `Id`= ".$this->NameID."";
        echo $sql;
        $DBConnect=new Database();
        $DBConnect->connect();
        $DBConnect->execute($sql);
    }
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
