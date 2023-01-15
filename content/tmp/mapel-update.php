<?php
   if(!defined('INDEX')) die("");

   $nama_kelas = $_POST[nama_kelas];
   $query = mysqli_query($con, "SELECT nama_komli FROM komli WHERE id_komli='$_POST[id_komli]'");
   $data = mysqli_fetch_array($query);
   $nama_komli = $data['nama_komli'];

   $query = mysqli_query($con, "UPDATE kelas SET
      nama_kelas = '$_POST[nama_kelas]',
      id_komli = '$_POST[id_komli]'
      WHERE id_kelas ='$_POST[id]'
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
                         Data Kelas berhasil diperbaharui menjadi <b><?= $nama_kelas ." - ". $nama_komli ?></b>.
                      </div>
                      </div>
                      <!-- /.box-body -->
                </div>
                <!-- /.col -->
          </div>
       </section>
    </div> 

    <?php

      echo "<meta http-equiv='refresh' content='1.5; url=?hal=kelas-view'>";
   }else{
      echo "Tidak dapat menyimpan data!<br>";
      echo mysqli_error();
   }
?>