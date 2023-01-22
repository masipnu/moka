<?php
   session_start();
   session_destroy();
   echo "<head>";
   echo "<meta http-equiv='refresh' content='1.5; url=login.php'>";
   echo "<link rel='stylesheet' href='bower_components/bootstrap/dist/css/bootstrap.min.css'>";
   echo "<link rel='stylesheet' href='dist/css/AdminLTE.min.css'>";
   echo "</head>";
   echo "<body class='h-100 bg-gray d-flex align-items-center'>";
   echo "<h1 class='text-yellow display-1 m-auto' align='center'>🔐<br><br>Anda telah logout!</h1>";
   echo "</body>";
?>