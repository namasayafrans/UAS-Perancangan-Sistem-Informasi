<?php
	session_start();
	
	include "koneksi.php";

	$nama_pekerja=$_POST["nama_pekerja"];
	$nama_pekerja=str_replace("'","", $nama_pekerja);
	$password_pekerja=str_replace("'","",$_POST["password_pekerja"]);
	$password_pekerja=md5($_POST["password_pekerja"]);

	$query=mysqli_query($koneksi,"SELECT * FROM pekerja WHERE nama_pekerja='$nama_pekerja' AND password_adm='$password_pekerja'")
	or die(mysqli_error($koneksi));


	
	if($data=mysqli_fetch_array($query)){
		$_SESSION["alert"]="Selamat datang $nama_pekerja";
		$_SESSION["nama_pekerja"]=$data["nama_perkerja"];
		header("Location: ../admin_index.php");
	}else{
		$_SESSION["alert"]="Username atau Password Salah";
		header("Location: ../index.php");
	}
?>