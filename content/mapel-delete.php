<?php
   if(!defined('INDEX')) die("");
   $query = mysqli_query($con, "SELECT mapel.nama_mapel, kelas.nama_kelas, komli.nama_komli FROM mapel LEFT JOIN kelas ON mapel.id_kelas=kelas.id_kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli WHERE id_mapel='$_GET[id]'");
   $data = mysqli_fetch_array($query);
   $nama_mapel = $data['nama_mapel'];
   $nama_kelas = $data['nama_kelas'];
   $nama_komli = $data['nama_komli'];
   $query = mysqli_query($con, "DELETE FROM mapel WHERE id_mapel='$_GET[id]'");

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
                     Mata Pelajaran : <b><?= $nama_mapel ?></b> Kelas : <b><?= $nama_kelas ?> - <?= $nama_komli ?></b> berhasil dihapus.
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
      echo "Tidak dapat menghapus data!<br>";
      echo mysqli_error();
   }
?>