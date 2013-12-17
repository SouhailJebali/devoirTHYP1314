<?php

if (isset ($_GET['nom'])) {

	require_once 'connexion.php';
		
	extract($_GET);
	
        
        echo $nom . $image;
        
	//echo $nom . " à " . date("H:i") . " a eu la note $note pour l'exercice : ". $exe." du cours ".$cours;
	//echo "L'étudiant(e) ".$nom . " est ".$raison." le ".date("H:i") . " au cours ".$cours;
}else{
	echo "Y'a RIEN !!";
}

//function enregister($etu, $exe, $note, $cours) {

function enregister($etu) {
	
mysqli_query($connexion,"INSERT INTO etudiants (prenom) VALUES ('$nom')");
}

?>
