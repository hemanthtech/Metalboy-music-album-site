<?php
require_once('config.inc.php');

$connect = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

if($connect->connect_error) {

	die("Error");
	exit;



}else {

	if($_GET["q"]!= '' || $_GET!=null) {


		$query = 'SELECT bands.band_name,bands.photo,band_descri.band_described,band_descri.website FROM bands,band_descri WHERE bands.id='.$_GET["q"].' AND bands.id=band_descri.band_name;';
		$result = mysqli_query($connect,$query);
		$row = mysqli_fetch_array($result);


?>
<!doctype html>
<html>
<head>
	<title>MetalBoy</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
	.navbar-brand {
		color:white !important;
	}
	h3 {
		padding:0px !important;
		margin:0px !important;
		display:inline;
	}
	.brand-image {
		width:70px;
		float:left;
		margin-top:-25px;
	}
	.navbar-inverse {
		padding:10px;
		background-color:black;
		border:0px;
		outline:0px;
		border-radius:0px;
	}
	.footer {
		margin-top:7px;
		margin-bottom:0px;
		background-color:black;
	}
	.footer p {
		color:white;
	}
	.container {
		margin-top:70px;
	}
	.container h1 {
		text-transform:uppercase;
		padding:10px 0px;
		border-bottom:1px solid lightgrey;
	}
	.band-img {
		width:100%;
	}
	.album-img {
		width:150px;

	}
	.band-albums {
		list-style:none;
	}
	.band-albums li {
		display:inline;
		float:left;
	}
	table tr {
		margin-top:50px;
		display:block;
	}
	table td {
		margin-left:15px;
		display:inline-block;
	}
  </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php"><h3>Metalboy</h3></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.php"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-user"></span> About Dev</a></li>
      </ul>
    </div>
  </div>
</nav>

	<div class="container">
		<h1><?php echo $row[0];?></h1>
		<img class="img-responsive band-img" src="<?php echo image_path.$row[1]?>"/>
		<h2>Bio</h2>
		<p><?php echo $row[2]; ?></p>
		<p> website - <a href="<?php echo $row[3];?>"><?php echo $row[3];?></a></p>
		<h2>Albums</h2>
		<table>
		<?php
		$query1 = 'SELECT band_album,photo,album_link FROM albums WHERE albums.band_name='.$_GET["q"].';';
		$result1 = mysqli_query($connect,$query1);

		while($row1 = mysqli_fetch_array($result1)) {
				echo '<tr>';
				echo '<td><img class="img-responsive album-img" '.'src="'.album_image_path.$row1[1].img_ext.'"/></td>'.'<td><h4><a href="'.$row1[2].'">'.$row1[0].'</a></h4>'.'</td>';
				echo '</tr>';

		}
		?>
		</table>
	</div>

<?php require_once('footer.php'); ?>

<?php

	}

}




?>
