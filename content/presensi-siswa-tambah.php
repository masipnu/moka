  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Daftar Presensi Siswa
        <small></small>
      </h1>
    </section>
    

        <!-- Main content -->
        <section class="content">
      <div class="row">

      <form role="form" method="post" action="?hal=presensi-siswa-add">

<?php
$query = mysqli_query($con, "SELECT * FROM view_siswa_all WHERE id_kelas=11");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>      

<div>
<div class="col-md-3">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-yellow">
              <div class="widget-user-image">
                <img class="img-circle" src="images/<?= $data['foto'] ?>" alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <h3 class="widget-user-username"><?= $data['nama'] ?></h3>
              <h5 class="widget-user-desc"><?= $data['nis'] ?></h5>
            </div>
            <div class="box-footer">
              <ul class="nav nav-stacked">
                <li>
                  <div class="radio text-center">
                    <label class="col-3">
                      <input type="radio" name="<?= $data['id_siswa'] ?>"  value="1">Hadir
                    </label>
                    <label class="col-3">
                      <input type="radio" name="<?= $data['id_siswa'] ?>"  value="2">Izin
                    </label>
                    <label class="col-3">
                      <input type="radio" name="<?= $data['id_siswa'] ?>"  value="3">Sakit
                    </label>
                    <label class="col-3">
                      <input type="radio" name="<?= $data['id_siswa'] ?>"  value="4">Tanpa
                    </label>
                  </div>
                </li>
                <li>
                <div class="form-group">
                    <textarea class="form-control" rows="2" placeholder="Tambahkan keterangan jika siswa tidak masuk!"></textarea>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <!-- /.widget-user -->
</div>
          
<?php
}
?>  


        <div class="col-md-12 text-center">
          
                <div class="">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan </button>
                <button type="reset" class="btn btn-warning"><i class="fa fa-eraser"></i> Reset </button>
                <a class="btn btn-danger" href="?hal=presensi-siswa-view"><i class="fa fa-mail-reply"></i> Batal </a>
                </div>

</div>

            </form>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->