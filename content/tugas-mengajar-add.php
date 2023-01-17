<?php
   if(!defined('INDEX')) die("");

   $query1 = mysqli_query($con, "SELECT * FROM view_guru_simple WHERE id_guru='$_POST[id_guru]'");
   $data = mysqli_fetch_array($query1);
   $nama_guru = $data['nama_guru'];

   $query2 = mysqli_query($con, "SELECT * FROM view_mapel WHERE id_mapel='$_POST[id_mapel]'");
   $data = mysqli_fetch_array($query2);
   $nama_mapel = $data['nama_mapel'];
   $nama_kelas = $data['nama_kelas'];
   $nama_komli = $data['nama_komli'];

   $query = mysqli_query($con, "INSERT INTO mengajar SET
      id_guru = '$_POST[id_guru]',
      id_mapel = '$_POST[id_mapel]'
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
                         <h4><i class="icon fa fa-check"></i> Alhamdulillah..,</h4>
                         Tugas mengajar berhasil ditambahkan.
                         <table class="table">
                            <tr>
                                <th><?= $nama_guru ?></th>
                                <th><?= $nama_mapel ?></th>
                                <th><?= $nama_kelas ." | ".$nama_komli?></th>
                            </tr>
                            <tr>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                            </tr>
                         </table>
                      </div>
                      </div>
                      <!-- /.box-body -->
                </div>
                <!-- /.col -->
          </div>
       </section>
    </div> 

    <?php

      echo "<meta http-equiv='refresh' content='1.5; url=?hal=tugas-mengajar-view'>";
   }else{
      echo "Tidak dapat menyimpan data!<br>";
      echo mysqli_error();
   }
?>