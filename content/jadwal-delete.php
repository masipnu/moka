<?php
   if(!defined('INDEX')) die("");

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
                         Jadwal Pelajaran berhasil dihapus.
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