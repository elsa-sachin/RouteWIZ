<?php
// Check if the search query is submitted
if (isset($_GET['query'])) {
    // Get the search query from the URL
    $query = $_GET['query'];

    // Establish a database connection (assuming MySQL)
    $servername = "localhost";
    $username = "root";
    $password = " ";
    $dbname = "routewizdb";
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check the database connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare the SQL statements to search for the class name and LH_no in each table
    $sql1 = "SELECT class_name, building_name, LH_no FROM routewiz_1_ WHERE class_name LIKE '%$query%' OR LH_no LIKE '%$query%'";
    $sql2 = "SELECT class_name, building_name, LH_no FROM dept WHERE class_name LIKE '%$query%' OR LH_no LIKE '%$query%'";
    $sql3 = "SELECT class_name, building_name, LH_no FROM extras WHERE class_name LIKE '%$query%' OR LH_no LIKE '%$query%'";

    // Execute the queries
    $result1 = $conn->query($sql1);
    $result2 = $conn->query($sql2);
    $result3 = $conn->query($sql3);

    // Check if any table has a matching result
    $tableFound = false;
    $tableResult = null;
    $tableName = '';

    if ($result1->num_rows > 0) {
        $tableFound = true;
        $tableResult = $result1;
        $tableName = 'table1';
    } elseif ($result2->num_rows > 0) {
        $tableFound = true;
        $tableResult = $result2;
        $tableName = 'table2';
    } elseif ($result3->num_rows > 0) {
        $tableFound = true;
        $tableResult = $result3;
        $tableName = 'table3';
    }

    // Display the search results or "No results found."
    if ($tableFound) {
        echo "Search Results from $tableName:<br>";
        while ($row = $tableResult->fetch_assoc()) {
            echo "Class Name: " . $row["class_name"] . "<br>";
            echo "Building Name: " . $row["building_name"] . "<br>";
            echo "LH No: " . $row["LH_no"] . "<br><br>";
        }
    } else {
        echo "No results found.";
    }

    // Close the database connection
    $conn->close();
}
?>
