<h1>Bravo! Hai raggiunto la VM db!</h1>
<?php
	$servername = "10.10.20.15:3306";
	$username = "vagrant";
	$password = "vagrantpass";

	// Create connection
	$conn = new mysqli($servername, $username, $password);

	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	echo "Connected successfully";
?>