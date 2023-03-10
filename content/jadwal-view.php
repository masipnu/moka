  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Jadwal Pelajaran
        <small></small>
        <a class="pull-right" href="
        <?php
        // fungsi untuk menonaktifkan tomboltambah jadwal
        // jika role-nya selain admin
        $role = intval($_SESSION['role']);
        if ($role == 1) {
          echo '?hal=jadwal-tambah';
        } else  {
          echo  '#';
        }
       ?>
        " class="text-muted"

       ><i class="fa fa-gear"></i></a>
     </h1>
   </section>

   <!-- Main content -->
   <section class="content">
    <div class="row">
      <div class="col-xs-12">

        <!-- START CUSTOM TABS -->
        <div class="row">

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/x_rpl.php"; ?>

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/x_pbs.php"; ?>

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/xi_rpl.php"; ?>

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/xi_pbs.php"; ?>

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/xii_rpl.php"; ?>

          <!-- include jadwal x-rpl -->
          <?php include "jadwal_view/xii_pbs.php"; ?>

        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->

    </div>
    <!-- /.content-wrapper -->

  </div>