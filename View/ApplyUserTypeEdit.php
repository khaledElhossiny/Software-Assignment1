<?php
require_once("../Controller/UserTypeController.php");
$UserTypeControllerObject=new UserTypeController();
$result=$UserTypeControllerObject->edit_search($_GET['id']);
while($row=mysqli_fetch_array($result))
{
    $usertypeid=$row['UserTypeId'];
    $usertype=$row['UserType'];
}
?>
<html>
<body>
<div class="window_container">
        <fieldset>
            <legend id="border_title">Edit UserType</legend> <!--border title-->
            <form action="../Controller/UserTypeController.php" method="post">
                <input type="hidden" name="id" value="<?php echo $id;?>">
                <label>UserTypeID:</label><input type = "text" name = 'usertypeid' value="<?php echo $usertypeid;?>" required>
                <label>UserType:</label><input type = "text" name = 'usertype' value="<?php echo $usertype;?>" required>
                <input type="submit" name="edit" value="Edit">
            </form>
        </fieldset>

</div>
</body>
</html>