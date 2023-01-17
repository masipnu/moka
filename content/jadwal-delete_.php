<!-- HALAMAN INI ERROR - DEPRECATED -->

<?php
   if(!defined('INDEX')) die("");

   $query1 = mysqli_query($con, "SELECT * FROM view_jam_kbm WHERE id_kbm='$_POST[id_kbm]'");
   $data = mysqli_fetch_array($query1);
   $nama_hari = $data['nama_hari'];
   $nama_jamke = $data['nama_jamke'];

   $query2 = mysqli_query($con, "SELECT * FROM view_mengajar WHERE id_mengajar='$_POST[id_mengajar]'");
   $data = mysqli_fetch_array($query2);
   $nama_kelas = $data['nama_kelas'];
   $nama_komli = $data['nama_komli'];
   $nama_mapel = $data['nama_mapel'];
   $nama_guru = $data['nama_guru'];

   $query = mysqli_query($con, "DELETE FROM jadwal_kbm WHERE id_jadwal='$_GET[id]'");

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
                         Jadwal Pelajaran berhasil ditambahkan.
                         <table class="table">
                            <tr>
                                <td>Hari</td>
                                <td>:</td>
                                <td><?= $nama_hari ?></td>
                            </tr>
                            <tr>
                                <td>Jam ke</td>
                                <td>:</td>
                                <td><?= $nama_jamke ?></td>
                            </tr>
                            <tr>
                                <td>Kelas</td>
                                <td>:</td>
                                <td><?= $nama_kelas ?></td>
                            </tr>
                            <tr>
                                <td>Kompetensi Keahlian</td>
                                <td>:</td>
                                <td><?= $nama_komli ?></td>
                            </tr>
                            <tr>
                                <td>Mata Pelajaran</td>
                                <td>:</td>
                                <td><?= $nama_mapel ?></td>
                            </tr>
                            <tr>
                                <td>Guru</td>
                                <td>:</td>
                                <td><?= $nama_guru ?></td>
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

      echo "<meta http-equiv='refresh' content='1.5; url=?hal=jadwal-view'>";
   }else{
      echo "Tidak dapat menyimpan data!<br>";
      echo mysqli_error();
   }
?>