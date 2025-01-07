<?php
	if(empty($_SESSION["nama_pekerja"])){
		$_SESSION["alert"]="Anda harus login terlebih dahulu";
		header("Location: ../index.php");
	}
?>