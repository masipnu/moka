<?php
   if(!defined('INDEX')) die("");
   $query = mysqli_query($con, "SELECT * from view_mengajar WHERE id_mengajar='$_GET[id]'");
   $data = mysqli_fetch_array($query);
   $nama_guru = $data['nama_guru'];
   $nama_mapel = $data['nama_mapel'];
   $nama_kelas = $data['nama_kelas'];
   $nama_komli = $data['nama_komli'];

   $query = mysqli_query($con, "DELETE FROM mengajar WHERE id_mengajar='$_GET[id]'");

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
                     Tugas mengajar berhasil dihapus.
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
      echo "<meta http-equiv='refresh' content='1; url=?hal=tugas-mengajar-view'>";
   }else{
      echo "Tidak dapat menghapus data!<br>";
      echo mysqli_error();
   }
?>