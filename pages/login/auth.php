<?php
session_start();
//untuk memasukkan file koneksi
include "../../lib/koneksi.php";

// menangkap variabel post dr form login / index.php
$username = $_POST ['username'];
$pass = $_POST ['password'];

/*echo $username;
echo $pass;*/

// pastikan password berupa huruf atau angka
if (!ctype_alnum ($username) OR !ctype_alnum($pass)) {
    /*echo "<center> LOGIN GAGAL !<br>
         MASUKAN DATA DENGAN BENAR.<br>
         Atau akun anda sedang diblokir.<br>";
    echo "<a href=../../index.php><b>ULANGI LAGI</b></a></center>";*/
} else {
    $login = mysqli_query ($koneksi, "SELECT * FROM admin WHERE username='$username' AND password='$pass'");
    $ketemu = mysqli_num_rows($login);
    $r = mysqli_fetch_array($login, MYSQLI_ASSOC);
    
    //apabila username dan password ditemukan
    if ($ketemu > 0)
    {
        if ($r['level']=="admin") 
        {
            $_SESSION['username']= $username;
            $_SESSION['namauser'] = $r['username'];
            $_SESSION['level']="admin";

            header('location:../../content.php?module=home');
        }
        elseif ($r['level']=="user") 
        {
            $_SESSION['username']= $username;
            $_SESSION['namauser'] = $r['username'];
            $_SESSION['level']="user";   
       
            header('location:../../content.php?module=home');
        }
           
       } 
}
?>