<html>
<div id="page-container-div">
    <div id="add-page-div">
        <label>Search:</label>
        <form action="" method="post">
            <label>UserType</label> <input type="text" name="userType"><br>
            <input type="submit" name="search" value="Search">
        </form>
    </div>
    <?php
    require_once("../Controller/UserTypeController.php");
    if(!empty($_POST['search']))
    {
		echo $_POST['userType'];
        $UserTypeControllerObject=new UserTypeController();
        $result=$UserTypeControllerObject->search($_POST['userType']);
        if(mysqli_num_rows($result)>0)
        {
            //display header
            echo
            "<table border='1' id='page_table'>
				    <form action=''>
					    <tr bgcolor='#CCCCCC'>
						    <td>UserTypeID</td> <td>UserType</td> 
					    </tr>";

            while($rows=mysqli_fetch_array($result))
            {
                //display data
                echo
                    "<tr>"
                    ."<td>".$rows['UserTypeId']."</td>"
                    ."<td>".$rows['UserType']."</td>"
                    ."<td>".'<a href="../Controller/UserTypeController.php?id='.$rows['UserTypeId'].'">Delete</a>'."</td>"
                    ."</tr>";
            }
            echo "</table>";
            echo "</form>";
        }
    }
    ?>
</div>
</html>