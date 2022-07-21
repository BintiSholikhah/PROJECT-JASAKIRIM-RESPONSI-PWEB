<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pembelian Tiket</title>	
	<link rel="stylesheet" type="text/css" href="data2.css">
</head>
<body>
	<div class="atas" align="left"><a href="index.html"><strong><font size="4" color="white">BinKargo</font></strong></a></div>
	<br><br>
	<?php
		$koneksi = mysqli_connect("localhost", "root", "", "responsi-2");

		$nama   = $_POST['inama'];
		$nik    = $_POST['inik'];
		$jarak = $_POST['jarak'];
		$tujuan = $_POST['itujuan'];
		$total  = $_POST['ototal'];

		$fp = fopen("data.txt", "a+");
		fputs($fp, "$nama  |  $nik  | $jarak  |  $tujuan  |  $total  \n");
		fclose($fp);


		$mysqli = "INSERT INTO tiket_pengiriman VALUES ('$nama', '$nik', '$jarak', '$tujuan','$total')";
		$result = mysqli_query($koneksi, $mysqli);

	?>
	<table border="0" align="center" width="40%" bgcolor="whitesmoke" cellpadding="14">
		<tr>
			<td width="100%" colspan="2"><h2 align="center">Struk Pembelian Tiket</h2></td>
		</tr>
		<tr>
			<td>Nama</td>
			<td><?php echo $nama; ?></td>
		</tr>
		<tr>
			<td>NIK</td>
			<td><?php echo $nik; ?></td>
		</tr>
		<tr>
			<td>Jarak</td>
			<td><?php echo "$jarak Km" ?></td>
		</tr>
		<tr>
			<td>Tujuan</td>
			<td><?php echo $tujuan ?></td>
		</tr>
			<td>Total Bayar</td>
			<td><?php echo $total; ?></td>
		</tr>
		<tr>
			<td width="100%" colspan="2"><p align="center" style="color: red";>Silahkan melakukan pembayaran untuk meneruskan pemesanan</p></td>
			</tr>
	</table>
	<br><hr>
</body>
</html>