<?php
include 'dbconnect.php';
$nama = $_POST['nama'];
$jenis = $_POST['jenis'];
$ukuran = $_POST['ukuran'];
$merk = $_POST['merk'];
$satuan = $_POST['satuan'];
$stock = $_POST['stock'];
$lokasi = $_POST['lokasi'];

$query = mysqli_query($conn, "insert into sstock_brg values('','$nama','$jenis','$merk','$ukuran','$stock','$satuan','$lokasi')");
if ($query) {

  echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= nilai-awal.php'/>  ";
} else {
  echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= nilai-awal.php'/> ";
}

?>

<html>