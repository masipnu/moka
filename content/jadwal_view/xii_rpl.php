<div class="col-md-6">
    <!-- Custom Tabs -->
    <div class="box-header">
      <b>Kelas XII </b>- Rekayasa Perangkat Lunak
    </div>
    <!-- /.box-header -->
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#xiirpl_senin" data-toggle="tab">Senin</a></li>
        <li><a href="#xiirpl_selasa" data-toggle="tab">Selasa</a></li>
        <li><a href="#xiirpl_rabu" data-toggle="tab">Rabu</a></li>
        <li><a href="#xiirpl_kamis" data-toggle="tab">Kamis</a></li>
        <li><a href="#xiirpl_jumat" data-toggle="tab">Jum'at</a></li>
        <li><a href="#xiirpl_sabtu" data-toggle="tab">Sabtu</a></li>
        <!-- <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="xiirpl_senin">
        
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_1");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->

        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xiirpl_selasa">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_2");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xiirpl_rabu">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_3");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xiirpl_kamis">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_4");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xiirpl_jumat">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_5");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
                </tr>
<?php
}
?>
              </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.tab-pane -->
        <div class="tab-pane" id="xiirpl_sabtu">
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_rpl_6");
$no = 0;
while($data = mysqli_fetch_array($query)){
$no++;
?>
                <tr>
                  <td ><?= $data['nama_jamke'] ?></td>
                  <td ><?= $data['nama_mapel'] ?></td>
                  <td ><?= $data['nama'] ?></td>
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