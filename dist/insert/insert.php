<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "coronahulp");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$sender_id = mysqli_real_escape_string($link, $_REQUEST['sender_id']);
$description = mysqli_real_escape_string($link, $_REQUEST['description']);
$lat = mysqli_real_escape_string($link, $_REQUEST['lat']);
$lng = mysqli_real_escape_string($link, $_REQUEST['lng']);
$action_id = mysqli_real_escape_string($link, $_REQUEST['action_id']);
 
// Attempt insert query execution
$sql = "INSERT INTO poi (sender_id, description, lat, lng, action_id, date) VALUES ('$sender_id', '$description', '$lat', '$lng', '$action_id', now())";
if(mysqli_query($link, $sql)){
    header('Location: ../index.php');
    exit;
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>