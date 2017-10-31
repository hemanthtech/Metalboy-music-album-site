<?php
require_once('config.inc.php');
$connect = @mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
if ($connect->connect_error) {
	echo "Error";
}else {

	$input = mysqli_real_escape_string($connect,htmlspecialchars(trim($_GET["input"])));
	if($input=='') {

		echo "<h2>All bands</h2>";
		echo "<hr/>";
}


$query = 'SELECT bands.id,bands.band_name,bands.photo,band_descri.band_described,band_descri.website FROM bands,band_descri WHERE bands.band_name LIKE "%'.$input.'%" AND bands.id = band_descri.band_name';

	if($result = mysqli_query($connect,$query)) {


		echo ($_GET["input"]=="" || $_GET["input"]==null)?"":"<h4>".mysqli_num_rows($result)." Result of ".$input."</h4>";
		while($row=mysqli_fetch_array($result)) {

			echo '<div class="bands">';
			echo '<img id="link" class="band-img img-responsive" '.'src="'.image_path.$row[2].'" '.'alt="'.$row[1].'-image"/>';
			echo '<h2>'.trim($row[1]).'</h2>';
			echo '<p class="band-descri">'.$row[3].'</p>';
			echo '<a href="http://localhost/Music-album-site/albumview.php?q='.trim($row[0]).'">Read more...</a>';
			echo '</div>';
			echo '<hr/>';
		} //end of while loop
	} // end of if loop
} // end of else
?>
