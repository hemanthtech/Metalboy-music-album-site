<?php

require_once('config.inc.php');

$connect = @mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

if ($connect->connect_error) {
	
	echo "Error";
	
	
}else {
	
	if($_GET["input"]=='') {
		
		echo "<h2>All bands</h2>";
		echo "<hr/>";
		
	}

	$query = 'SELECT bands.band_name,bands.photo,band_descri.band_described,band_descri.website FROM bands,band_descri WHERE bands.band_name LIKE "%'.$_GET["input"].'%" AND bands.id = band_descri.band_name';
	
	if($result = mysqli_query($connect,$query)) {
		
		
		echo ($_GET["input"]=="" || $_GET["input"]==null)?"":"<h4>".mysqli_num_rows($result)." Result of ".$_GET["input"]."</h4>";
		while($row=mysqli_fetch_array($result)) {
			
			echo '<div class="bands">';
			echo '<img id="link" class="band-img img-responsive" '.'src="'.image_path.$row[1].'" '.'alt="'.$row[0].'-image"/>';
			echo '<h2>'.$row[0].'</h2>';
			echo '<p class="band-descri">'.$row[2].'</p>';
			echo '<a href="http://'.$row[3].'">Visit site</a>';
			echo '</div>';
			
			
		} //end of while loop
		
	} // end of if loop
	
	
	
} // end of else 

?>

