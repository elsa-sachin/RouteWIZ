<!DOCTYPE html>
<html>
<head>
    <title>Search Bar Example</title>
</head>
<body>
    <form action="search1.php" method="POST">
        <input type="text" name="query" placeholder="Enter LH 5 / S4 IT format">
        <input type="submit" name="submit" value="Submit">
    </form>
</body>
</html>



<?php
// Check if the search query is submitted
if (isset($_POST['submit'])) {
    // Get the search query from the form
    $query = $_POST['query'];

    // Establish a database connection (assuming MySQL)
    $servername = "localhost";
    $username = "root";
    $password = ""; // Replace with your database password
    $dbname = "routewizdb";
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check the database connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Use prepared statements to prevent SQL injection
    $sql1 = "SELECT class_name, building_name, floor_no FROM routewiz__1_ WHERE LH_no=?";
    $sql2 = "SELECT LH_no, building_name, floor_no FROM routewiz__1_ WHERE class_name=?";
    $sql3 = "SELECT  building_name, floor_no FROM extras WHERE class_name=?";
    
    
    



    // Prepare and bind the parameters
    $stmt1 = $conn->prepare($sql1);
    $stmt1->bind_param("s", $query);

    $stmt2 = $conn->prepare($sql2);
    $stmt2->bind_param("s", $query);

    $stmt3 = $conn->prepare($sql3);
    $stmt3->bind_param("s", $query);

    // Execute the queries
    $stmt1->execute();
    $result1 = $stmt1->get_result();

    $stmt2->execute();
    $result2 = $stmt2->get_result();

    $stmt3->execute();
    $result3 = $stmt3->get_result();

    // Display the results
    if ($result1->num_rows > 0) {
        while ($row = $result1->fetch_assoc()) {
            echo "Class Name: " . $row['class_name'] . ", Building Name: " . $row['building_name'] . ", Floor No: " . $row['floor_no'] . "<br>";
        }
    } 
    elseif ($result2->num_rows > 0) {
        while ($row = $result2->fetch_assoc()) {
            echo "LH No: " . $row['LH_no'] . ", Building Name: " . $row['building_name'] . ", Floor No: " . $row['floor_no'] . "<br>";
        }
    } 

    elseif ($result3->num_rows > 0) {
        while ($row = $result3->fetch_assoc()) {
            echo  " Building Name: " . $row['building_name'] . ", Floor No: " . $row['floor_no'] . "<br>";
        }
    }
    else
    {
        echo "No results found for LH No: $query<br>";
    }

    // Close the database connection
    $stmt1->close();
    $stmt2->close();
    $conn->close();
}
?>

