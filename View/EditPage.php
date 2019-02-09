<html>
<div id="page-container-div">
    <div id="add-page-div">
        <label>Search:</label>
        <form action="" method="post">
            <label>Page Friendly Name</label> <input type="text" name="friendlyName"><br>
            <input type="submit" name="search" value="Search">
        </form>
    </div>
    <?php
    require_once("../Controller/PageController.php");
    if(!empty($_POST['search']))
    {
        $PageControllerObject=new PageController();
        $result=$PageControllerObject->search($_POST['friendlyName']);
        if(mysqli_num_rows($result)>0)
        {
            //display header
            echo
            "<table border='1' id='page_table'>
				    <form action=''>
					    <tr bgcolor='#CCCCCC'>
						    <td>ID</td> <td>Address</td> <td>Friendly Name</td>
					    </tr>";

            while($rows=mysqli_fetch_array($result))
            {
                //display data
                echo
                    "<tr>"
                    ."<td>".$rows['PageId']."</td>"
                    ."<td>".$rows['PhysicalAdrs']."</td>"
                    ."<td>".$rows['FriendlyName']."</td>"
                    ."<td>".'<a href="ApplyEdit.php?id='.$rows['PageId'].'">edit</a>'."</td>"
                    ."</tr>";
            }
            echo "</table>";
            echo "</form>";
        }
    }
    ?>
</div>
</html>