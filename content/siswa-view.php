  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Siswa
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
              <a class="btn btn-info disabled" href="?hal=siswa-tambah"><i class="fa fa-plus"></i>  Tambah</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No.</th>
                  <th>Foto</th>
                  <th>No. Induk</th>
                  <th>Nama</th>
                  <th>Jenis Kelamin</th>
                  <th>Kelas</th>
                  <th>Kompetensi Keahlian</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
<?php
$query = mysqli_query($con, "SELECT * FROM view_siswa_all");
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
                    <!-- fungsi covert jeniis kelamin -->
                        <?php if ($data['jk']=="L") {
                                echo  "Laki-laki";
                              }elseif ($data['jk']=="P") {
                                echo "Perempuan";
                              }else {
                                echo "N/A";
                              } ?>
                  </td>
                  <td><?= $data['nama_kelas'] ?></td>
                  <td><?= $data['nama_komli'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-info disabled" href="?hal=siswa-edit&id=<?= $data['id_siswa'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                    <a class="btn btn-sm btn-danger disabled" href="?hal=siswa-delete&id=<?= $data['id_siswa'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
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