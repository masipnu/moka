<?php

    $sql="INSERT INTO log_presensi (tgl, id_mengajar, id_siswa, id_presensi, catatan) VALUES";
    $urut=0;
    for ($i=0; $i < count($_POST['id_siswa']); $i++) { 
        $data="('".$_POST['tgl']."','".$_POST['id_mengajar']."','".
        $_POST['id_siswa'][$i]."',".$_POST['id_presensi'][$i].",'".$_POST['catatan'][$i]."')";
    $insert=mysqli_query($con,$sql.$data);
    }    

   if($insert){

    ?>
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
          <div class="row">
                <div class="col-md-6">
                      <div class="box-body">
                      <div class="alert alert-success alert-dismissible">
                         <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                         <h4><i class="icon fa fa-check"></i> Alhamdulillah,</h4>
                          Peserta didik berhasil diabsen, Terimakasih.
                      </div>
                      </div>
                      <!-- /.box-body -->
                </div>
                <!-- /.col -->
          </div>
       </section>
    </div>   
    <?php

      echo "<meta http-equiv='refresh' content='1.5; url=?hal=presensi-siswa-view'>";
   }else{
      echo "Tidak dapat menyimpan data!<br>";
      echo mysqli_error();
   }
?>