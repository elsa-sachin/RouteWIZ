<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
    <link rel="stylesheet" type="text/css" href="search.css">
    <link rel="stylesheet" type="text/css" href="float.css">

    <link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
<div class="page-container">
    <form action="search.php" method="POST">
        <div name="search-container">
        <h1>DESTINATION</h1>
            
        <input type="text" name="query" placeholder="Enter LH 5 / S4 IT format">
        <input type="submit" name="submit" value="SEARCH">
        
        
        
    </form>
   
   
    
</div> 

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
    $name="result";
    echo '<div data-name="' . $name . '">';
    function loadJSONData($filename)
{
    $jsonData = file_get_contents($filename);
    return json_decode($jsonData, true); // Set the second parameter to true to decode as an associative array
}

// Load the JSON data
$videoData = loadJSONData('video.json');


    if ($result1->num_rows > 0)
     {
        
        
        echo "<table>";
        echo "<tr>";
        echo "<th> Entered Value </th>";
        echo "<th> Class Name</th>";
        echo "<th> Building Name</th>";
        echo "<th> Floor No</th>";
        echo "<th> Map </th>";
        echo "</tr>";
        while ($row = $result1->fetch_assoc()) 
        {

              echo "<tr>";
              echo "<td>" .$query. "</td>";
              echo "<td>".$row['class_name']."</td>";
              echo "<td>" .$row['building_name']."</td>";
              echo "<td>" .$row['floor_no']."</td>";
        
            
    
            $queryVideoURL = isset($videoData[$query]) ? $videoData[$query] : '';
            

            // Display the video element
            echo "<td>";
            if($row['building_name']==="MAIN BUILDING")
            {echo "No video available for Main Building.";}
            else {
            if (!empty($queryVideoURL)) {
                echo '<video width="320" height="240" controls>';
                echo '<source src="' . $queryVideoURL . '" type="video/mp4">';
                echo "Your browser does not support the video tag.";
                echo '</video>';
            } else {
                echo "No video available for this query.";
            }
            echo "</td>";
            }
            echo"</tr>";
        }
        
    
        echo "</table>";
    }
    elseif ($result2->num_rows > 0) 
    {
        echo "<table>";
        echo "<tr>";
        echo "<th> Entered Value </th>";
        echo "<th> LH No</th>";
        echo "<th> Building Name</th>";
        echo "<th> Floor No</th>";
        echo "<th> Map </th>";
        echo "</tr>";
        while ($row = $result2->fetch_assoc()) 
        {
              echo "<tr>";
              echo "<td>" .$query. "</td>";
              echo "<td>".$row['LH_no']."</td>";
              echo "<td>" .$row['building_name']."</td>";
              echo "<td>" .$row['floor_no']."</td>";
              $queryVideoURL = isset($videoData[$query]) ? $videoData[$query] : '';

            // Display the video element
            echo "<td>";
            if($row['building_name']==="MAIN BUILDING")
            {echo "No video available for Main Building.";}
            else {
            if (!empty($queryVideoURL)) {
                echo '<video width="320" height="240" controls>';
                echo '<source src="' . $queryVideoURL . '" type="video/mp4">';
                echo "Your browser does not support the video tag.";
                echo '</video>';
            } else {
                echo "No video available for this query.";
            }
            echo "</td>";
        }
            echo "</tr>";
              
        }
        echo "</table>";
    } 

    elseif ($result3->num_rows > 0) 
    {
        
            
        echo "<table>";
        echo "<tr>";
        echo "<th> Entered Value </th>";
        echo "<th> Building Name</th>";
        echo "<th> Floor No</th>";
        echo "<th> Map </th>";
        echo "</tr>";
        while ($row = $result3->fetch_assoc())
        {
              echo "<tr>";
              echo "<td>" .$query. "</td>";
              echo "<td>" .$row['building_name']."</td>";
              echo "<td>" .$row['floor_no']."</td>";
              $queryVideoURL = isset($videoData[$query]) ? $videoData[$query] : '';

            // Display the video element
            echo "<td>";
            if($row['building_name']==="MAIN BUILDING")
            {echo "No video available for Main Building.";}
            else 
        {
            if (!empty($queryVideoURL))
             {
                echo '<video width="320" height="240" controls>';
                echo '<source src="' . $queryVideoURL . '" type="video/mp4">';
                echo "Your browser does not support the video tag.";
                echo '</video>';
            } else 
            {
                echo "No video available for this query.";
            }
            echo "</td>";
             
        }
              echo "</tr>";
              
        }
        echo "</table>";
    }
    
    else
    {
        echo "No results found for LH No: $query<br>";
    }
   echo '</div>';

    // Close the database connection
    $stmt1->close();
    $stmt2->close();
    $conn->close();
}
?>

