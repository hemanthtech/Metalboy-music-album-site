<?php
require_once('config.inc.php');

$connect = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

if($connect->connect_error) {

	$msg = mysqli_error($connect);

}else {



	if(isset($_POST["rockband_name"]) AND isset($_FILES["rockband_image"]) AND isset($_POST["rockband_site"]) AND isset($_POST["rockband_bio"]))
{

	$rockband_name = mysqli_real_escape_string($connect,htmlspecialchars($_POST["rockband_name"]));
	$rockband_image = $_FILES["rockband_image"];
	$rockband_image_name = $_FILES["rockband_image"]["name"];
	$rockband_image_tmp = $_FILES["rockband_image"]["tmp_name"];
	$rockband_image_type = $_FILES["rockband_image"]["type"];
	$rockband_image_size = $_FILES["rockband_image"]["size"];
	$rockband_site = mysqli_real_escape_string($connect,htmlspecialchars($_POST["rockband_site"]));
	$rockband_bio = mysqli_real_escape_string($connect,htmlspecialchars($_POST["rockband_bio"]));

	if(!empty($rockband_image) AND !empty($rockband_name) AND !empty($rockband_site) AND !empty($rockband_bio)) {

		$query = 'SELECT * FROM bands WHERE band_name="'.$rockband_name.'";';
		$result = mysqli_query($connect,$query);

	if(mysqli_num_rows($result)==0) {

		if($rockband_image_type=="image/jpeg" || $rockband_image_type=="image/jpg" || $rockband_image_type=="image/png" ) {



			if(move_uploaded_file($rockband_image_tmp,image_path.$rockband_image_name)) {


				$query2 = 'INSERT INTO bands (id,band_name,photo) VALUES (NULL,"'.$rockband_name.'",'.'"'.$rockband_image_name.'");';
				mysqli_query($connect,$query2);

				$query3 = 'SELECT id FROM bands WHERE band_name="'.$rockband_name.'";';
				$result3 = mysqli_query($connect,$query3);
				$row = mysqli_fetch_array($result3);

				$query4 = 'INSERT INTO metalboy.band_descri (id,band_name,band_described,website) VALUES (NULL,'.$row[0].',"'.$rockband_bio.'",'.'"'.$rockband_site.'");';
				mysqli_query($connect,$query4);
				$msg = '<div class="alert alert-success alert-dismissable">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 Success!
</div>';
}

}else {


			$msg = '<div class="alert alert-danger alert-dismissable">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  Please make sure that image extension <strong>JPEG,JPG OR PNG</strong>
</div>';


		}// extension problem


	}//num rows
	else {

		$msg = '<div class="alert alert-danger alert-dismissable">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  band already exists
</div>';


	}



	}else {


		$msg = '<div class="alert alert-danger alert-dismissable">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  Please fill all the blanks
</div>';


	}

  }

}



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
	.container {
		margin-top:70px;
	}
	.footer {
		margin-top:30px;
		margin-bottom:0px;
		background-color:black;
	}
	.footer p {
		color:white;
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
        <li class="active"><a href="register.php"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-user"></span> About Dev</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <h2>Register band</h2>
  <hr/>
  <?php if(empty($msg)){

	  echo "";

  }else {

	  echo $msg;

  }?>
  <form action='<?php echo $_SERVER["PHP_SELF"]?>' method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="rockband_name">Rockband name</label>
      <input type="text" class="form-control" id="email" placeholder="Enter rockband name..." name="rockband_name">
    </div>
    <div class="form-group">
      <label for="rockband_image">Rockband image</label>
      <input type="file" id="rockband_image" name="rockband_image">
    </div>
	<div class="form-group">
      <label for="rockband_site">Rockband website</label>
      <input type="url" class="form-control" id="rockband_site" placeholder="Enter url" name="rockband_site">
    </div>
    <div class="form-group">
	  <label for="rockband_bio">Rockband short bio</label>
	  <textarea class="form-control" rows="5" placeholder="Write something about band...." id="rockband_bio" name="rockband_bio"></textarea>
	</div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>


<?php
require_once('footer.php');
?>
