<!-- HALAMAN INI MASIH ERROR -->

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Jadwal Pelajaran
        <small></small>
      </h1>
    </section>

        <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

      <!-- START CUSTOM TABS -->
      <div class="row">

      <div class="col-md-6">
    <!-- Custom Tabs -->
    <div class="box-header">
      <b>Kelas X </b>- Rekayasa Perangkat Lunak
    </div>
    <!-- /.box-header -->
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#xrpl_senin" data-toggle="tab">Senin</a></li>
        <li><a href="#xrpl_selasa" data-toggle="tab">Selasa</a></li>
        <li><a href="#xrpl_rabu" data-toggle="tab">Rabu</a></li>
        <li><a href="#xrpl_kamis" data-toggle="tab">Kamis</a></li>
        <li><a href="#xrpl_jumat" data-toggle="tab">Jum'at</a></li>
        <li><a href="#xrpl_sabtu" data-toggle="tab">Sabtu</a></li>
        <!-- <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="xrpl_senin">
        
        <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                <th>Jam ke</th>
                  <th >Mata Pelajaran</th>
                  <th >Guru</th>
                </tr>
                <?php
$query = mysqli_query($con, "SELECT * from view_jam_kbm left join view_jadwal_all using(id_kbm)");
$data = mysqli_fetch_array($query);
var_dump($data);
for ($i=0; $i < count($data); $i++) { ?>
  <tr>
                    <td ><?= $data['id_kbm'] ?></td>
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
        
      </div>
      <!-- /.tab-content -->
    </div>
    <!-- nav-tabs-custom -->
  </div>
  <!-- /.col -->


      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->

</div>