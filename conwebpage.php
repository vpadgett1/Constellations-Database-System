<?php
require('dbconfig.php');
include("auth_session.php");
?>
<html>
<head>
    <title>Constellations</title>
</head>
<style>
body {
    background-color: #D4E9FF;
}
</style>
<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1><span style="font-size: 50px; color: #FAB403; font-weight: bold;">Constellations</span></h1>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
<h1>What is a constellation?</h1>
<p>A constellation is an area on the celestial sphere in which a group of visible stars forms a perceived outline or pattern, typically representing an animal, mythological person or creature, or an inanimate object.</p>
<p> </p>
<?php
$resultAll = mysqli_query($conn, "SELECT * FROM constellation");
if(!$resultAll){
	die(mysqli_error($conn));
}

if (mysqli_num_rows($resultAll) > 0) {
	while($rowData = mysqli_fetch_array($resultAll)){
  		echo '<span style="font-size: 30px; color: #FAB403; font-weight: bold;">'.$rowData["name"].'</span>'.'<br>';
		echo "Shape: ".$rowData["shape"].'<br>';
		echo "Description: ".$rowData["description"].'<br>';
		echo '<br>'; 
		echo "Discovery: ".'<br>';
		$strID = $rowData["constellation_id"];
		$discov = mysqli_query($conn, "SELECT * FROM discovery LEFT JOIN constellation ON discovery.constellation_id = constellation.constellation_id WHERE discovery.constellation_id = $strID");
		if(!$discov){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($discov) > 0) {
			while($rowData2 = mysqli_fetch_array($discov)){
				echo "This constellation was first discovered by: ".$rowData2["discovered_by"]." in ".$rowData2["date_discovered"].'<br>';
			}
		}
		echo '<br>';
		echo "Location of the Constellation in the Sky: ".'<br>';
		$locateToFind = mysqli_query($conn, "SELECT * FROM constellation_location LEFT JOIN constellation ON constellation_location.constellation_id = constellation.constellation_id WHERE constellation_location.constellation_id = $strID");
		if(!$locateToFind){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($locateToFind) > 0) {
			while($rowData2 = mysqli_fetch_array($locateToFind)){
				echo "Visible between Latitudes of: ".$rowData2["latitudes_visible"].'<br>';
				echo "Located in the ".$rowData2["quadrant_in_sky"]." quadrant in the sky.".'<br>';
			}
		}
		echo '<br>';
		echo "Stars that make up this Constellation: ".'<br>';
		$starToFind = mysqli_query($conn, "SELECT * FROM star LEFT JOIN constellation ON star.constellation_id = constellation.constellation_id WHERE star.constellation_id = $strID");
		if(!$starToFind){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($starToFind) > 0) {
			while($rowData2 = mysqli_fetch_array($starToFind)){
				echo "Name: ".$rowData2["stname"].", Radius ".$rowData2["radius"].", Mass: ".$rowData2["mass"].", Temperature: ".$rowData2["temperature"].", Luminosity: ".$rowData2["luminosity"].'<br>';
			}
		}
		echo '<br>';
		echo "Location of the Stars that make up the Constellation in the sky: ".'<br>';
		$starLocate = mysqli_query($conn, "SELECT * FROM star_location JOIN star ON star_location.star_id = star.star_id JOIN constellation ON star.constellation_id = constellation.constellation_id WHERE star.constellation_id = $strID");
		if(!$starLocate){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($starLocate) > 0) {
			while($rowData2 = mysqli_fetch_array($starLocate)){
				echo $rowData2["star_name"]." is located at a declination of: ".$rowData2["declination"]. " and at a right ascention of ".$rowData2["right_ascention"].'<br>';
			}
		}
		echo '<br>';
		echo "This Constellation is Visible in the Months of: ".'<br>';
		$months = mysqli_query($conn, "SELECT * FROM visible_month LEFT JOIN constellation ON visible_month.constellation_id = constellation.constellation_id WHERE visible_month.constellation_id = $strID");
		if(!$months){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($months) > 0) {
			while($rowData2 = mysqli_fetch_array($months)){
				echo $rowData2["month"].'<br>';
			}
		}
		echo '<br>';
		$aster = mysqli_query($conn, "SELECT * FROM asterisms LEFT JOIN constellation ON asterisms.constellation_id = constellation.constellation_id WHERE asterisms.constellation_id = $strID");
		if(!$aster){
			die(mysqli_error($conn));
		}
		if (mysqli_num_rows($aster) > 0) {
			while($rowData2 = mysqli_fetch_array($aster)){
				echo "This Constellation features an asterim called: ".$rowData2["astname"]." and it looks to be in the shape of a ".$rowData2["astshape"].'<br>';
			}
		}
		echo '<br>';
	}
}
?>
</body>
</html>