  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Presensi Siswa
        <small></small>
      </h1>
    </section>
    

    <!-- Main content -->
    <section class="content">
      <div class="row">

        <form role="form" method="post" action="?hal=presensi-siswa-add">
          <input type="date" name="tgl" value="<?=date("Y-m-d")?>" hidden>

          <?php
//test sesi guru
//echo $_SESSION['id_guru']
// $id_guru=$_SESSION['id_guru'];
// var_dump($id_guru);
// print_r($id_guru);
          ?>

          <?php
          $id_guru=$_SESSION['id_guru'];
          $sql = "SELECT 
          siswa.id_siswa,
          siswa.nama,
          siswa.nis,
          siswa.foto,
          mapel.id_mapel,
          mapel.nama_mapel,
          mengajar.id_mengajar
          from siswa
          join mapel using(id_kelas)
          join mengajar using(id_mapel)
          where id_mengajar=(SELECT id_mengajar from view_id_mengajar_today)
          and id_guru='$id_guru'";
          $query = mysqli_query($con, $sql);
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
                        <input type="text" name="id_mengajar" value="<?= $data['id_mengajar']?>" hidden>
                        <input type="text" name="id_siswa[]" value="<?= $data['id_siswa'] ?>" hidden>
                        <div class="form-group">
                          <select class="form-control" name="id_presensi[]" required>
                            <option value=""> - Pilih Presensi - </option>
                            <option value="1"> Hadir </option>
                            <option value="2"> Izin </option>
                            <option value="3"> Sakit </option>
                            <option value="4"> Tanpa Keterangan </option>
                          </select>
                        </div>
                      </li>
                      <li>
                        <div class="form-group">
                          <textarea class="form-control" name="catatan[]" rows="2" placeholder="Tambahkan keterangan jika siswa tidak masuk!"></textarea>
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
<?php 
// fungsi untuk menonaktifkan tombol simpan,
// jika tidak ada daftar siswa yang munculs
if ($data['id_siswa']<=0) {
  echo "<p><b>Maaf,</b><br>anda tidak bisa menambahkan presensi saat ini.<br>";
  echo "Silahkan kembali.</p>";
}
 ?>
              <div class="">
                <button type="submit" class="btn btn-success disableds"
<?php 
// fungsi untuk menonaktifkan tombol simpan,
// jika tidak ada daftar siswa yang munculs
if ($data['id_siswa']<=0) {
  echo "disabled";
}
 ?>
                ><i class="fa fa-save"></i> Simpan </button>
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