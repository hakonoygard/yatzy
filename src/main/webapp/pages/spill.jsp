<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spill</title>
</head>
<body>
	
	<p> Du er med i dette spillet: ${spill} </p>
	
	<form action=spill method="post">
	
	<input type="submit" value="Trill terninger">


	
	</form>
	<!-- Bare for spillere som det er sin tur -->
	<fieldset>
	<p> Resultat av kast: </p>
		<p>${kopp[0]}</p>
		<p>${kopp[1]}</p>
		<p>${kopp[2]}</p>
		<p>${kopp[3]}</p>
		<p>${kopp[4]}</p>
		<p>"Resultat av kast: " ${resultat}</p>
    </fieldset>



	</fieldset>
	
	<form action=startside method="get">
	<input type="submit" value="Tilbake til startsiden">
	</form>
	
	
	
	
	
	
	
</body>
</html>