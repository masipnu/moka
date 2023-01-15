<?php
   session_start();
   include "library/config.php";
   $role = $_POST['id_role'];
   $username = $_POST['username'];
   $password = md5($_POST['password']);
   

   switch ($role) {
      case 1: //admin
         $query = mysqli_query($con, "SELECT * FROM guru LEFT JOIN role ON guru.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;
      
      case 2: //operator
         $query = mysqli_query($con, "SELECT * FROM guru LEFT JOIN role ON guru.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;
      
      case 3: //guru
         $query = mysqli_query($con, "SELECT * FROM guru LEFT JOIN role ON guru.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;
      
      case 4: //ortu
         $query = mysqli_query($con, "SELECT * FROM ortu LEFT JOIN role ON ortu.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;
      case 5: //siswa
         $query = mysqli_query($con, "SELECT * FROM siswa LEFT JOIN role ON siswa.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;
      case 6: //ks
         $query = mysqli_query($con, "SELECT * FROM guru LEFT JOIN role ON guru.id_role=role.id_role WHERE username='$username' AND password='$password'");
         $data = mysqli_fetch_array($query);
         $jml = mysqli_num_rows($query);
         // mod-multiple-role
         if($jml > 0){
               $_SESSION['username'] = $data['username'];
               $_SESSION['password'] = $data['password'];
               $_SESSION['role'] = $data['id_role'];
               $_SESSION['nama_role'] = $data['nama_role'];
               $_SESSION['nama'] = $data['nama'];
               header('location: index.php');
         }else{
            echo "<head>";
            echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
            echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
            echo "</head>";
            echo "<body class='h-100 bg-gray align-items-center d-flex'>";
            echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Password/ Username anda salah!</h1>";
            echo "</body>";
         }
      break;

      default:
      echo "<head>";
      echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
      echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
      echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
      echo "</head>";
      echo "<body class='h-100 bg-gray align-items-center d-flex'>";
      echo "<h1 class='text-yellow display-5 m-auto' align='center'>🙏 Maaf,<br>Anda belum memilih role!</h1>";
      echo "</body>";

      }

   

// original
   // if($jml > 0){
   //    if ($data['role']=1) {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-2.php');
   //    } elseif ($data['role']="2") {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-2.php');
   //    } elseif ($data['role']=3) {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-3.php');
   //    } elseif ($data['role']=4) {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-4.php');
   //    } elseif ($data['role']=5) {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-5.php');
   //    } else {
   //       $_SESSION['username'] = $data['username'];
   //       $_SESSION['password'] = $data['password'];
   //       header('location: index-6.php');
   //    } 
   // }else{
   //    echo "<p align='center'>Login Gagal</p>";
   //    echo "<meta http-equiv='refresh' content='2; url=login.php'>";
   // }


?>