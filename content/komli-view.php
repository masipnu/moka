  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Kompetensi Keahlian
        <small></small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">

      <div class="col-md-6">

        <div class="box">
            <div class="box-header">
            <a class="btn btn-info disabled" href="?hal=komli-tambah"><i class="fa fa-plus"></i>  Tambah</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-striped">
                <tr>
                  <th class="text-center" style="width: 10px">No.</th>
                  <th class="text-center">Nama Kompetensi Keahlian</th>
                  <th class="text-center" style="width: 40px">Jumlah Siswa</th>
                  <th class="text-center">Aksi</th>
                </tr>

<?php
$query = mysqli_query($con, "SELECT * FROM komli ORDER BY id_komli ASC");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td class="text-center"><?= $no ?></td>
                  <td><?= $data['nama_komli'] ?></td>
                  <td class="text-center">
                  <!-- menampilkan jumlah populasi siswa per komli -->
                    <?php
                    $id_komli=$data['id_komli'];
                    $pop = mysqli_num_rows(mysqli_query($con, "SELECT * FROM siswa JOIN kelas using (id_kelas) join komli using (id_komli) WHERE id_komli=$id_komli"));
                    echo $pop;
                    ?>
                  </td>
                  <td class="text-center">
                  <a class="btn btn-sm btn-info disabled" href="?hal=komli-edit&id=<?= $data['id_komli'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                <a class="btn btn-sm btn-danger disabled" href="?hal=komli-delete&id=<?= $data['id_komli'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
                  </td>
                </tr>
<?php
}
?>
              </table>

            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <small><b>Catatan:</b><br>Kompetensi Keahlian yang sedang digunakan/ tertaut dengan data kelas tidak bisa dihapus. Jika ingin menghapus, hapus dulu data kelasnya.
                </small>
              </div>
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