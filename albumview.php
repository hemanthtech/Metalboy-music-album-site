<?php
require_once('config.inc.php');

$connect = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

if($connect->connect_error) {
	
	
	echo "Something wrong";
	
	
	
}else {
	
	
	
	$query = 'SELECT bands.band_name,bands.photo,band_descri.band_described,band_descri.website,album.band_album,album.band_album_link FROM bands,band_descri,album WHERE bands.band_name LIKE "%'.$_GET["band_no"].'%" AND bands.id = band_descri.band_name AND band.id = album.band_name';
	$result = mysqli_query($connect,$query);
	$row = mysqli_fetch_array($query);
	
	
	
	
?>
<div class="container">
<img class="band-image" src="<?php echo $row[1]?>" alt='<?php echo $row[0]."-image" ?>'>
<h2>Bio:</h2>
<p class="description"><?php echo $row[2]?></p>
<h4>website :</h4>
<a href="<?php echo $row[3]?>"><?php echo $row[3]?></a>
<h3>Music albums</h3>

</div>


<?php
	
	
	
	
}
	
	
	
	
	
	
	
	
	




?>