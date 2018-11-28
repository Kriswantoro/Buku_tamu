<html>
</head>
	<title>Buku Tamu</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
   
   	<script type="text/javascript" src="../tinymce/tiny_mce.js"></script>
	<script type="text/javascript">

	tinyMCE.init({

	// General options

	mode : "textareas",
	theme : "advanced",

	});
	</script>

</head>
<body>
 
	<div id="container">
		<h1>Buku Tamu</h1>
		<p>Silahkan isi buku tamu di bawah ini untuk meninggalkan pesan Anda!</p>
 
		<?php
		if(isset($_POST['go'])){
			include '../include/koneksi.php';
 
			$nama	= $_POST['nama'];
			$email	= $_POST['email'];
			$web	= $_POST['website'];
			$pesan	= $_POST['komentar'];
			$tgl	= time();
 
			if($nama && $email && $pesan){
				if(filter_var($email, FILTER_VALIDATE_EMAIL)){
					$in = mysqli_query($koneksi,"INSERT INTO buku_tamu(tgl_bktamu,nm_bktamu,email_bktamu,alamat_bktamu,komentar) VALUES('$tgl', '$nama', '$email', '$web', '$pesan')");
					if($in){
						echo '<script language="javascript">alert("Terima kasih, data Anda berhasil disimpan"); document.location="server.php?module=bukutamu";</script>';
					}else{
						echo '<div id="error">Uppsss...! Query ke database gagal dilakukan!</div>';
					}
				}else{
					echo '<div id="error">Uppsss...! Email Anda tidak valid!</div>';
				}
			}else{
				echo '<div id="error">Uppsss...! Lengkapi form!</div>';
			}
		}
		?>
 
		<form action="" method="post">
			<p>
				<b>Nama Lengkap :</b>
				<br><input type="text" name="nama" placeholder="nama" required/>
			</p>
			<p>
				<b>Email :</b>
				<br><input type="text" name="email" placeholder="nama@email.com" required/>
			</p>
			<p>
				<b>Website :</b>
				<br><input type="text" name="website" placeholder="http://www.coba.com" required/>
			</p>
			<p>
				<p><b>Komentar :</b></p><textarea name="komentar"></textarea>
			<p>
				<input type="submit" name="go" value="Kirim" /> <input type="reset" name="del" value="Hapus"/>
			</p>
		</form>
	</div>
 
</body>
</html>