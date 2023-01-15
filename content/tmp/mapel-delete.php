<?php
   if(!defined('INDEX')) die("");
   $query = mysqli_query($con, "SELECT kelas.nama_kelas, komli.nama_komli FROM kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli WHERE id_kelas='$_GET[id]'");
   $data = mysqli_fetch_array($query);
   $kelas = $data['nama_kelas'];
   $komli = $data['nama_komli'];
   $query = mysqli_query($con, "DELETE FROM kelas WHERE id_kelas='$_GET[id]'");

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
                     Data Kelas : <b><?= $kelas . " - " . $komli; ?></b> berhasil dihapus.
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
      echo "Tidak dapat menghapus data!<br>";
      echo mysqli_error();
   }
?>