<?php
// isi nama host, username mysql, dan password mysql anda
$koneksi = mysqli_connect('localhost', 'root', '', 'db_skripsi5');

if (mysqli_connect_errno()) {
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
