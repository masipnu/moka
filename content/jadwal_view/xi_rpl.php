<div class="col-md-6">
    <!-- Custom Tabs -->
    <div class="box-header">
      <b>Kelas XI </b>- Rekayasa Perangkat Lunak
    </div>
    <!-- /.box-header -->
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#xirpl_senin" data-toggle="tab">Senin</a></li>
        <li><a href="#xirpl_selasa" data-toggle="tab">Selasa</a></li>
        <li><a href="#xirpl_rabu" data-toggle="tab">Rabu</a></li>
        <li><a href="#xirpl_kamis" data-toggle="tab">Kamis</a></li>
        <li><a href="#xirpl_jumat" data-toggle="tab">Jum'at</a></li>
        <li><a href="#xirpl_sabtu" data-toggle="tab">Sabtu</a></li>
        <!-- <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="xirpl_senin">
        
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_1");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->

        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xirpl_selasa">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_2");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xirpl_rabu">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_3");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xirpl_kamis">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_4");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xirpl_jumat">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_5");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xirpl_sabtu">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                  <th>Aksi</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xi_rpl_6");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                  <td>
                    <a class="btn btn-sm btn-danger" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
                    <i class="fa fa-eraser"></i>
                  </a>
                  </td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
      </div>
      <!-- /.tab-content -->
    </div>
    <!-- nav-tabs-custom -->
  </div>
  <!-- /.col -->