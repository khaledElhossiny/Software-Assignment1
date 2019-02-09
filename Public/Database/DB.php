<?php
class Database
{
	private $host = "localhost";
	private $username = "root";
	private $password = "";
	private $DBname = "software-assignment1";
	private $connection = null;
	
	function connect()
	{
		$this->connection = new mysqli($this->host,$this->username,$this->password,$this->DBname);
	}
	function execute($sql)
	{
		return mysqli_query($this->connection,$sql);
	}
}
?>
