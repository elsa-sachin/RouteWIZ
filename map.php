<!DOCTYPE html>
<html>
<head>
    <title>Video Page</title>
</head>
<body>
    <?php
    // Check if the video URL query parameter exists
    if (isset($_GET['video'])) {
        $video_url = $_GET['video'];

        // Display the video using an HTML5 video element
        echo '<video width="640" height="360" controls>';
        echo '<source src="' . $video_url . '" type="video/mp4">';
        echo 'Your browser does not support the video tag.';
        echo '</video>';
    } else {
        echo "Video URL not found.";
    }
    ?>
</body>
</html>
