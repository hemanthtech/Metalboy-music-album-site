<?php
require_once('header.php');
require_once('config.inc.php');
?>
<script>


function strip(param){

	param.replace(/<{1}[^<>]{1,}>{1}/g," ");
	return param;



}
var btn = document.getElementById("input");

if(btn.value===null || btn.value==='') {

var containerElement = document.getElementsByClassName("container")[0];

containerElement.innerHTML = "<h1 style='text-align:center;'>Enter something to get result</h1>";


}


btn.addEventListener("keyup",getAlbums);


function getAlbums() {



	xmlhttp = new XMLHttpRequest();

	xmlhttp.onreadystatechange = function() {

		if(xmlhttp.status === 200) {

			document.getElementsByClassName("container")[0].innerHTML = this.responseText;

		}


	}


	xmlhttp.open("GET","<?php echo xfgrhf; ?>"+"?input="+strip(document.getElementById("input").value),true);
	xmlhttp.send();


}

</script>
<?php require_once('footer.php');?>
