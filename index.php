<?php
  session_start();
  ob_start();
  
  include "library/config.php";

  if(empty($_SESSION['username']) or empty($_SESSION['password'])){
     echo "<p align='center'> Anda harus login terlebih dahulu!</p>";
     echo "<meta http-equiv='refresh' content='0; url=login.php'>";
  }else{
    define('INDEX', true);
?>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->

<html>

    <?php include "parts/head.php"; ?>

<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->

<body class="hold-transition skin-yellow sidebar-mini">
    <div class="wrapper">

        <?php include "parts/header.php"; ?>

        <?php 
        
        switch ($_SESSION['role']) {
            case 1: //admin
                include "parts/sidebar-left-1.php";
            break;
            case 2: //operator
                include "parts/sidebar-left-2.php";
            break;
            case 3: //guru
                include "parts/sidebar-left-3.php";
            break;
            case 4: //ortu
                include "parts/sidebar-left-4.php";
            break;
            case 5: //siswa
                include "parts/sidebar-left-5.php";
            break;
            case 6: //ks
                include "parts/sidebar-left-6.php";
            break;
            }

        ?>
        
        <?php include "konten.php"; ?>
        <?php //include "parts/content.php"; ?>

        <?php include "parts/footer.php"; ?>

        <?php //sinclude "parts/sidebar-right.php"; ?>

    </div>
    <!-- ./wrapper -->

    <?php include "parts/js-files.php"; ?>

    <?php include "parts/chart-script.php"; ?>

</body>
</html>

<?php }; ?>