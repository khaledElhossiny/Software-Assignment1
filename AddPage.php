<html>
<div id="page-container-div">
	<div id="add-page-div">
		<form action="../Controller/PageController.php" method="post">
			<label>Page Address</label> <input type="text" name="pageAddrres">
			<label>Page Friendly Name</label> <input type="text" name="friendlyName">
			<input type="submit" name="addPage" value="Add Page">
		</form>
	</div>
	<div id="search-div">
		<form action="../Controller/PageController.php" method="post">
			<label>Search</label> <input type="text" name="search">
			<input type="submit" name="search" value="Search">
		</form>
		
		<?php
			require_once("../Contorller/PageController.php");
			$PageController=new PageController();
			$result=$PageController->searchPage();
			while($row=mysqli_fetch_array($result))
			{
				echo "<table>"
			}
		?>
	</div>
</div>
</html>