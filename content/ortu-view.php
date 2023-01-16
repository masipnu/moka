  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Orang Tua/ Wali
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
                  <th>Id. Ortu</th>
                  <th>Nama</th>
                  <th>Status</th>
                  <th>Nama Siswa</th>
                  <th>Whatsapp</th>
                  <th>Username</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
<?php
$query = mysqli_query($con, "SELECT * FROM view_ortu_all");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td><?= $no ?></td>
                  <td><?= $data['id_ortu'] ?></td>
                  <td><?= $data['nama_ortu'] ?></td>
                  <td><?= $data['status'] ?></td>
                  <td><?= $data['nama_siswa'] ?></td>
                  <td><a class="btn btn-sm btn-success" href="https://wa.me/<?= $data['no_hp'] ?>"><i class="fa fa-whatsapp"></i> </td>
                  <td><?= $data['username'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-info disabled" href="?hal=guru-edit&id=<?= $data['id_guru'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                    <a class="btn btn-sm btn-danger disabled" href="?hal=guru-delete&id=<?= $data['id_guru'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
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