<?php

//File Upload Section
if (isset($_POST['upload'])) {
    $uploadedFileName = $_FILES['file']['name'];
    $targetDirectory = "upload/";
    $targetFilePath = $targetDirectory . $uploadedFileName;
    move_uploaded_file($_FILES['file']['tmp_name'], $targetFilePath)
    if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFilePath)) {
    $userInput = $_POST['user_input'];
    
    $status = "File uploaded successfully.";
    } else {
    $status = "File upload failed.";
    }
    }
//File Delete Section
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>File Manager</title>
</head>
<body>
<p><a href="dashboard.php">User Dashboard</a> |
<a href="logout.php">Logout</a></p>
<h1>File Manager</h1>
<!-- Form for File Upload section -->
<form enctype="multipart/form-data" method="post" action="">
<input type="file" name="file" required /><br><br>
<input type="submit" name="upload" value="Upload File" />
</form>
<?php
if (isset($status)) {
echo "<p>Status: $status</p>";
}
?>
</body>
</html>