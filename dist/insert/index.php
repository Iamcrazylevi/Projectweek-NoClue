<html lang="en">
<head>
<meta charset="UTF-8">
<title>upload post</title>
</head>
<body>
<form action="insert.php" method="post">
    <p>
        <label for="sender_id">sender_id:</label>
        <input type="number" name="sender_id" id="sender_id">
    </p>
    <p>
        <label for="description">description:</label>
        <input type="text" name="description" id="description">
    </p>
    <p>
        <label for="lat">lat:</label>
        <input type="float" name="lat" id="lat">
    </p>
    <p>
        <label for="lng">lng:</label>
        <input type="float" name="lng" id="lng">
    </p>

    <p>
        <label for="action_id">action_id:</label>
        <input type="number" name="action_id" id="action_id">
    </p>
    <input type="submit" value="Submit">
</form>
</body>
</html>