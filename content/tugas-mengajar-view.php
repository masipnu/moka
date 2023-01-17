  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pembagian Tugas mengajar
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
              <a class="btn btn-info" href="?hal=tugas-mengajar-tambah"><i class="fa fa-plus"></i>  Tambah</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No.</th>
                  <th>Id. Mengajar</th>
                  <th>Nama Guru</th>
                  <th>Mata Pelajaran</th>
                  <th>Kelas</th>
                  <th>Kompetensi Keahlian</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
<?php
$query = mysqli_query($con, "SELECT * FROM view_tugas_mengajar");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td><?= $no ?></td>
                  <td><?= $data['id_mengajar'] ?></td>
                  <td><?= $data['nama_guru'] ?></td>
                  <td><?= $data['nama_mapel'] ?></td>
                  <td><?= $data['nama_kelas'] ?></td>
                  <td><?= $data['nama_komli'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-info disabled" href="?hal=tugas-mengajar-edit&id=<?= $data['id_mengajar'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                    <a class="btn btn-sm btn-danger" href="?hal=tugas-mengajar-delete&id=<?= $data['id_mengajar'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
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