<?php

	$connexion=mysqli_connect("localhost","root","",'etunote');
		// Check connection
		if (mysqli_connect_errno())
		{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}
		return $connexion;

?>
