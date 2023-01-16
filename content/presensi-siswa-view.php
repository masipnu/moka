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
            <div class="box-header">
              <!-- <h3 class="box-title">Data Table With Full Features</h3> -->
              <a class="btn btn-info" href="?hal=presensi-siswa-tambah"><i class="fa fa-plus"></i>  Tambah</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No.</th>
                  <th>Tanggal</th>
                  <th>Hari</th>
                  <th>Jam ke</th>
                  <th>Mata Pelajaran</th>
                  <th>Siswa</th>
                  <th>Presensi</th>
                  <th>Catatan</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
<?php
$query = mysqli_query($con, "SELECT * FROM view_log_presensi_all");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td><?= $no ?></td>
                  <td><?= $data['tgl'] ?></td>
                  <td><?= $data['nama_hari'] ?></td>
                  <td><?= $data['nama_jamke'] ?></td>
                  <td><?= $data['nama_mapel'] ?></td>
                  <td><?= $data['nama_siswa'] ?></td>
                  <td><?= $data['jenis_presensi'] ?></td>
                  <td><?= $data['catatan'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-info disabled" href="?hal=siswa-edit&id=<?= $data['id_siswa'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                    <a class="btn btn-sm btn-danger disabled hidden " href="?hal=siswa-delete&id=<?= $data['id_siswa'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
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