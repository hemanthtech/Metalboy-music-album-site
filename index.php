<?php
require_once('header.php');
require_once('config.inc.php');
?>
<script>

var btn = document.getElementById("input");

if(btn.value===null || btn.value==='') {
	
	document.getElementById("Enter").innerHTML = "Enter something to get result";
	
	
}

btn.addEventListener("keyup",getAlbums);


function getAlbums() {
	

	
	xmlhttp = new XMLHttpRequest();
	
	xmlhttp.onreadystatechange = function() {
		
		if(xmlhttp.status === 200) {
			
			document.getElementsByClassName("container")[0].innerHTML = this.responseText;
			
		}
		
		
	}	
	
	xmlhttp.open("GET","<?php echo xfgrhf; ?>"+"?input="+document.getElementById("input").value,true);
	xmlhttp.send();
	

}

</script>
<?php require_once('footer.php');?>