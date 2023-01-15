<?php
   if(!defined('INDEX')) die("");
   $query = mysqli_query($con, "SELECT nama_komli FROM komli WHERE id_komli='$_GET[id]'");
   $data = mysqli_fetch_array($query);
   $komli = $data['nama_komli'];
   $query = mysqli_query($con, "DELETE FROM komli WHERE id_komli='$_GET[id]'");

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
                     Data Kompetensi Keahlian : <b><?= $komli; ?></b> berhasil dihapus.
                  </div>
                  </div>
                  <!-- /.box-body -->
            </div>
            <!-- /.col -->
      </div>
   </section>
</div>   
<?php
      echo "<meta http-equiv='refresh' content='1.5; url=?hal=komli-view'>";
   }else{
      echo "Tidak dapat menghapus data!<br>";
      echo mysqli_error();
   }
?>