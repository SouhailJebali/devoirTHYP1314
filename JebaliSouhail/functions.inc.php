<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cannectDB($DB_name)
	{
		$connexion=mysqli_connect("localhost","root","",$DB_name);
		// Check connection
		if (mysqli_connect_errno())
		{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}
		return $connexion;
	}
?>

