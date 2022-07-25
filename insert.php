<?php 
	// Check If form submitted, insert form data into users table.
	if(isset($_POST['submit'])) {
		$name = $_POST['name'];
		$idnum = $_POST['idnum'];
		$nohp = $_POST['nohp'];
        $kelas = $_POST['kelas'];
        $date = $_POST['date'];
        $jumlahP = $_POST['jumlahP'];
        $jumlahPL = $_POST['jumlahPL'];
        $hargaTiket = $_POST['hargaTiket'];
        $total = $_POST['total'];
		
		// include database connection file
		include_once("config.php");
				
		// Insert user data into table

		$result = mysqli_query($conn, "INSERT INTO orders (nama_pemesan,nomor_id,nomor_hp,kelas_penumpang,
        tanggal_berangkat, jumlah_penumpang, jumlah_penumpang_lansia,
        harga_tiket, total_bayar) VALUES ('$name','$idnum','$nohp','$kelas','$date','$jumlahP','$jumlahPL','$hargaTiket','$total')");
		
		header("Location: index.html");
	}
?>