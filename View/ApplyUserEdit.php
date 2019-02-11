<?php
require_once("../Controller/UserController.php");
$UserControllerObject=new UserController();
$result=$UserControllerObject->edit_search($_GET['id']);
while($row=mysqli_fetch_array($result))
{
    $id=$row['Id'];
    $Name=$row['Name'];
    $Password=$row['Password'];
}
?>
<html>
<body>
<div class="window_container">
        <fieldset>
            <legend id="border_title">Edit user</legend> <!--border title-->
            <form action="../Controller/UserController.php" method="post">
                <input type="hidden" name="id" value="<?php echo $id;?>">
                <label>Name:</label><input type = "text" name = 'Name' value="<?php echo $Name;?>" required>
                <input type="submit" name="edit" value="Edit">
            </form>
        </fieldset>

</div>
</body>
</html>
