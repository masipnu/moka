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
        <div class="col-xs-12">

          <div class="box">
            <!-- <div class="box-header"> -->
              <!-- <h3 class="box-title">Data Table With Full Features</h3> -->
              <!-- <a class="btn btn-info disabled" href="?hal=presensi-siswa-tambah"><i class="fa fa-plus"></i>  Tambah</a> -->
            <!-- </div> -->
            <!-- /.box-header -->
            <div class="box-body">
              <!-- tableid=example1 -->
              <table id="" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No.</th>
                  <th>Foto</th>
                  <th>No. Induk</th>
                  <th>Nama Siswa</th>
                  <th>Presensi</th>
                  <th>Catatan</th>
                </tr>
                </thead>
                <tbody>
<?php
$query = mysqli_query($con, "SELECT * FROM view_siswa_all WHERE id_kelas=11");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td><?= $no ?></td>
                  <td><img src="images/<?= $data['foto'] ?>" alt="" height="50px"></td>
                  <td><?= $data['nis'] ?></td>
                  <td><?= $data['nama'] ?></td>
                  <td>
                    <!-- radio -->
                <div class="form-group">
                  <div class="radio">
                    <label>
                      <input type="radio" name="<?= $data['id_siswa'] ?>" id="<?= $data['id_siswa'] ?>1" value="1">
                      Hadir
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="<?= $data['id_siswa'] ?>" id="<?= $data['id_siswa'] ?>2" value="2">
                      Izin
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="<?= $data['id_siswa'] ?>" id="<?= $data['id_siswa'] ?>3" value="3">
                      Sakit
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="<?= $data['id_siswa'] ?>" id="<?= $data['id_siswa'] ?>4" value="4">
                      Tanpa Keterangan
                    </label>
                  </div>
                </div>
                  </td>
                  <td>
                  <div class="form-group">
                    <textarea class="form-control" rows="4" placeholder="Tambahkan keterangan jika siswa tidak masuk!"></textarea>
                  </div>
                  </td>
                </tr>
<?php
}
?>                
                </tbody>
                <!-- <tfoot>
                <tr>
                  <th>x</th>
                  <th>x</th>
                  <th>x(s)</th>
                  <th>x</th>
                  <th>x</th>
                </tr>
                </tfoot> -->
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->