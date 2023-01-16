<?php
// disabled
// $pop_x_rpl = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_x_rpl"));
// $pop_x_pbs = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_x_pbs"));
// $pop_xi_rpl = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_xi_rpl"));
// $pop_xi_pbs = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_xi_pbs"));
// $pop_xii_rpl = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_xii_rpl"));
// $pop_xii_pbs = mysqli_num_rows(mysqli_query($con, "SELECT * FROM pop_xii_pbs"));
?>  
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Kelas
        <small></small>
      </h1>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
            <a class="btn btn-info disabled" href="?hal=kelas-tambah"><i class="fa fa-plus"></i>  Tambah</a>

              <div class="box-tools">
                <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th  style="width: 10px">No.</th>
                  <th >Nama Kelas</th>
                  <th >Kompetensi Keahlian</th>
                  <th >Jumlah Siswa</th>
                  <th class="text-center">Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli ORDER BY kelas.id_kelas  ASC");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td class="text-center"><?= $no ?></td>
                  <td ><?= $data['nama_kelas'] ?></td>
                  <td ><?= $data['nama_komli'] ?></td>
                  <td >
                    <!-- menampilkan jumlah populasi siswa per kelas -->
                    <?php
                    $id_kelas=$data['id_kelas'];
                    $pop = mysqli_num_rows(mysqli_query($con, "SELECT * FROM siswa WHERE id_kelas=$id_kelas"));
                    echo $pop;
                    ?>
                  </td>
                  <td class="text-center">
                    <a class="btn btn-sm btn-info disabled" href="?hal=kelas-edit&id=<?= $data['id_kelas'] ?>"> <i class="oi oi-pencil"></i> Edit </a>
                    <a class="btn btn-sm btn-danger disabled" href="?hal=kelas-delete&id=<?= $data['id_kelas'] ?>"> <i class="oi oi-trash"></i> Hapus </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->