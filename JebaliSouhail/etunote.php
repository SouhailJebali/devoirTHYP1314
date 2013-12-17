<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

?>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="../js/jquery.min.js" ></script>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
         <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
        
	<script>
	function presentliste(etu){
		var dl = document.getElementById("lst"); 

		//AJOUTE DANS LA BASE
		$.get("../ecrire.php"
				, {nom:etu.nom,cours:'LangagesWeb',raison:1},
				 function(message){
					var liste = document.createElement("div");
					liste.setAttribute('class', 'listeP');
					liste.innerHTML = message;
					dl.appendChild(liste);
				});
		
	};

	function absentliste(etu){

		var dl = document.getElementById("lst"); 
		var liste = document.createElement("div");
			liste.setAttribute('class', 'listeA');
			liste.innerHTML = etu.nom+' est abscent.';//etu.prenom+' '+etu.nom+' '+etu.diplome+' est absent';
		dl.appendChild(liste);
		
		
	};	
		function showRSS(url)
		{
			//merci à http://stackoverflow.com/questions/10943544/how-to-parse-a-rss-feed-using-javascript
			$.ajax({
				  url      : document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=100&callback=?&q=' + encodeURIComponent(url),
				  dataType : 'json',
				  success  : function (data) {
				    if (data.responseData.feed && data.responseData.feed.entries) {
				      $.each(data.responseData.feed.entries, function (i, e) {
				        console.log("------------------------");
				        console.log("image      : " + e.mediaGroups[0].contents[0].url);
				        console.log("title      : " + e.title);
				        console.log("author     : " + e.author);
				        console.log("description: " + e.description);
				        var oEtu = {nom:e.title,url:e.mediaGroups[0].contents[0].url};
				        showEtu(oEtu);
				        
				      });
				    }
				  }
				});
			console.log('FIN showRSS');
		}
		
		function showEtu(etu){                        
			var d=document.createElement("div");
			d.setAttribute('class', 'etu');                        
			d.innerHTML = etu.nom;
			document.body.appendChild(d);
                        
                        var d=document.createElement("div");
			d.setAttribute('id', 'note'); 
                        d.setAttribute('class', 'note'); 
                        
			
			document.body.appendChild(d);
                        
			
			var tof = document.createElement("img");
			tof.setAttribute('src', etu.url);
			tof.setAttribute('alt', etu.nom);
			tof.setAttribute('title', etu.nom);
			tof.addEventListener("click", function(){presentliste(etu)});
			d.appendChild(tof);
                        enregeistrement(etu.nom); 
                        
                     

			
		};		
	</script>
	<style type="text/css">
		.etu{
		width:300px;
		}
		.listeA{
			background-color:red;
		}
		.listeP{
			background-color:green;
		}
	</style>
	</head>
	<body >
	<script>
            showRSS("https://picasaweb.google.com/data/feed/base/user/112537161896190034287/albumid/5931538032377292977?alt=rss&kind=photo&authkey=Gv1sRgCJjJwc265LnxigE&hl=fr");
	</script>
		<br>
		
		<div id="lst" ></div>
                
   <div id="studentsInfo">

        </div>
       <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>   
	   <script src="Liste_Etudiants.js"></script>
	</body>
</html>