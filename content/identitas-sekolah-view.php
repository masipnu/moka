<?php
   if(!defined('INDEX')) die("");
?>

<?php
    // ambil data sekolah dari database
    $query = mysqli_query($con, "SELECT * FROM sekolah");
    $data = mysqli_fetch_array($query);
?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Profil Sekolah
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-square" src="images/<?= $data['logo']?>" alt="User profile picture">

              <h3 class="profile-username text-center"><?= $data['nama_sekolah']?></h3>

              <p class="text-muted text-center">The Pioneer of SMK Berbasis Pesantren</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>NPSN</b> <a class="pull-right"><?= $data['npsn']?></a>
                </li>
                <li class="list-group-item">
                  <b>Tenaga Pendidik</b> <a class="pull-right">25</a>
                </li>
                <li class="list-group-item">
                  <b>Peserta Didik</b> <a class="pull-right">115</a>
                </li>
              </ul>

              <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">

                  <!-- About Me Box -->
                  <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Tentang Kami</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i> Deskripsi</strong>

              <p class="text-muted">
              <?= $data['deskripsi']?>
              </p>

              <hr>

              <strong><i class="fa fa-map-marker margin-r-5"></i> Alamat</strong>

              <p class="text-muted"><?= $data['alamat_sekolah']?></p>

              <hr>

              <strong><i class="fa fa-pencil margin-r-5"></i> Program Studi</strong>

              <p>
                <span class="label label-primary"><i class="fa fa-gears"></i>  Rekayasa Perangkat Lunak</span>
                <span class="label label-success"><i class="fa fa-money"></i>  Perbankan Syariah</span>
              </p>

              <hr>

              <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>

              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->