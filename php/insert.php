<?php 
	//connect to the egm_barcodes database.
	$connection=mysqli_connect('localhost:3306','homenetw_eg','123456789','homenetw_barcodes');
	
	$name=$_POST['name'];

	$sql="INSERT INTO tbl_products (name, created) VALUES ('$name',NOW())";

	$result=mysqli_query($connection,$sql);

	//get the last id
	$id=mysqli_insert_id($connection);
	//Combine id with current minute and second
	$code=$id.date('is');

	$sql="UPDATE tbl_products SET code='$code' WHERE product_id='$id'";

	$result=mysqli_query($connection,$sql);

	//redirect to index.php
	header("Location:../index.php");
 ?>


