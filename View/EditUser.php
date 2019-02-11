<html>
<div id="page-container-div">
    <div id="add-page-div">
        <label>Search:</label>
        <form action="" method="post">
            <label>Name</label> <input type="text" name="Name"><br>
            <input type="submit" name="search" value="Search">
        </form>
    </div>
    <?php
    require_once("../Controller/userController.php");
    if(!empty($_POST['search']))
    {
        $userControllerObject=new userController();
        $result=$userControllerObject->search($_POST['Name']);
        if(mysqli_num_rows($result)>0)
        {
            //display header
            echo
            "<table border='1' id='page_table'>
				    <form action=''>
					    <tr bgcolor='#CCCCCC'>
						    <td>ID</td> <td>Name</td>
					    </tr>";

            while($rows=mysqli_fetch_array($result))
            {
                //display data
                echo
                    "<tr>"
                    ."<td>".$rows['Id']."</td>"
                    ."<td>".$rows['Name']."</td>"
                
                    ."<td>".'<a href="ApplyUserEdit.php?id='.$rows['Id'].'">edit</a>'."</td>"
                    ."</tr>";
            }
            echo "</table>";
            echo "</form>";
        }
    }
    ?>
</div>
</html>