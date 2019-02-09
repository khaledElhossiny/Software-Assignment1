<?php
require_once("../Controller/PageController.php");
$PageControllerObject=new PageController();
$result=$PageControllerObject->edit_search($_GET['id']);
while($row=mysqli_fetch_array($result))
{
    $id=$row['PageId'];
    $adrs=$row['PhysicalAdrs'];
    $friendlyName=$row['FriendlyName'];
}
?>
<html>
<body>
<div class="window_container">
        <fieldset>
            <legend id="border_title">Edit Product</legend> <!--border title-->
            <form action="../Controller/PageController.php" method="post">
                <input type="hidden" name="id" value="<?php echo $id;?>">
                <label>Address:</label><input type = "text" name = 'pageAdrs' value="<?php echo $adrs;?>" required>
                <label>FriendlyName:</label><input type = "text" name = 'friendlyName' value="<?php echo $friendlyName;?>" required>
                <input type="submit" name="edit" value="Edit">
            </form>
        </fieldset>

</div>
</body>
</html>
