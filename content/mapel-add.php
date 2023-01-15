<?php
   if(!defined('INDEX')) die("");

   $nama_mapel = $_POST[nama_mapel];
   $query = mysqli_query($con, "SELECT * FROM kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli WHERE id_kelas='$_POST[id_kelas]'");
   $data = mysqli_fetch_array($query);
   $nama_kelas = $data['nama_kelas'];
   $nama_komli = $data['nama_komli'];

   $query = mysqli_query($con, "INSERT INTO mapel SET
      nama_mapel = '$_POST[nama_mapel]',
      id_kelas = '$_POST[id_kelas]'
   ");

   if($query){

    ?>
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
          <div class="row">
                <div class="col-md-6">
                      <div class="box-body">
                      <div class="alert alert-success alert-dismissible">
                         <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                         <h4><i class="icon fa fa-check"></i> Alert!</h4>
                         Mata Pelajaran : <b><?= $nama_mapel ?></b> Kelas : <b><?= $nama_kelas ?> - <?= $nama_komli ?></b> berhasil ditambahkan.
                      </div>
                      </div>
                      <!-- /.box-body -->
                </div>
                <!-- /.col -->
          </div>
       </section>
    </div> 

    <?php

      echo "<meta http-equiv='refresh' content='1.5; url=?hal=mapel-view'>";
   }else{
      echo "Tidak dapat menyimpan data!<br>";
      echo mysqli_error();
   }
?>