<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "checkout";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete'])) {
    // Retrieve payment ID from the form
    $paymentID = $_POST['paymentID'];

    // Perform delete query
    $sql = "DELETE FROM paymentmethod WHERE PaymentMID='$paymentID'";

    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
}

// Redirect back to the page where the form was submitted from
header("Location: {$_SERVER['HTTP_REFERER']}");
exit();
?>

