<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disney Films</title>
</head>
<body>
    <h1>Disney Films</h1>
    <form action="" method="post">
    <link rel="stylesheet" href="beautiful.css">
        <label for="search">Search:</label>
        <input type="text" name="search" id="search">
        <input type="submit" value="Search">
    </form>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Year</th>
            <th>Genre</th>
            <th>Director</th>
            <th>Country</th>
            <th>Duration (min)</th>
        </tr>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "bd_disney";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        if (isset($_POST['search'])) {
            $search = $_POST['search'];
            $sql = "SELECT * FROM films WHERE Titre LIKE '%$search%' OR Annee_production LIKE '%$search%' OR Genre LIKE '%$search%' OR Realisateur LIKE '%$search%' OR Pays LIKE '%$search%'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ID_film"] . "</td>";
                    echo "<td>" . $row["Titre"] . "</td>";
                    echo "<td>" . $row["Annee_production"] . "</td>";
                    echo "<td>" . $row["Genre"] . "</td>";
                    echo "<td>" . $row["Realisateur"] . "</td>";
                    echo "<td>" . $row["Pays"] . "</td>";
                    echo "<td>" . $row["Duree_minutes"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='7'>No films found</td></tr>";
            }
        } else {
            $sql = "SELECT * FROM films";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ID_film"] . "</td>";
                    echo "<td>" . $row["Titre"] . "</td>";
                    echo "<td>" . $row["Annee_production"] . "</td>";
                    echo "<td>" . $row["Genre"] . "</td>";
                    echo "<td>" . $row["Realisateur"] . "</td>";
                    echo "<td>" . $row["Pays"] . "</td>";
                    echo "<td>" . $row["Duree_minutes"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='7'>No films found</td></tr>";
            }
        }

        $conn->close();
        ?>
    </table>
</body>
</html>