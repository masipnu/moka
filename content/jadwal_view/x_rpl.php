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
      <!-- link untuk tombol ini masih error -->
      <!-- <li class="pull-right"><a href="?hal=jadwal-tambah" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
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
            $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_senin");
            $no = 0;
            while($data = mysqli_fetch_array($query)){
              $no++;
              ?>
              <tr>
                <td ><?= $data['nama_jamke'] ?></td>
                <td ><?= $data['nama_mapel'] ?></td>
                <td ><?= $data['nama'] ?></td>
                <td>
                  <a class="btn btn-sm btn-danger
                  <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
                  if ($role !== 1) {
                    echo 'disabled';
                  }  ?>
                  " href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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
    <div class="tab-pane" id="xrpl_selasa">
      <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
          <tr>
            <th>Jam ke</th>
            <th >Mata Pelajaran</th>
            <th >Guru</th>
          </tr>
          <?php
          $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_selasa");
          $no = 0;
          while($data = mysqli_fetch_array($query)){
            $no++;
            ?>
            <tr>
              <td ><?= $data['nama_jamke'] ?></td>
              <td ><?= $data['nama_mapel'] ?></td>
              <td ><?= $data['nama'] ?></td>
              <td>
                <a class="btn btn-sm btn-danger
                <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
                if ($role !== 1) {
                  echo 'disabled';
                }  ?>" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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
  <div class="tab-pane" id="xrpl_rabu">
    <div class="box-body table-responsive no-padding">
      <table class="table table-hover">
        <tr>
          <th>Jam ke</th>
          <th >Mata Pelajaran</th>
          <th >Guru</th>
        </tr>
        <?php
        $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_rabu");
        $no = 0;
        while($data = mysqli_fetch_array($query)){
          $no++;
          ?>
          <tr>
            <td ><?= $data['nama_jamke'] ?></td>
            <td ><?= $data['nama_mapel'] ?></td>
            <td ><?= $data['nama'] ?></td>
            <td>
              <a class="btn btn-sm btn-danger
              <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
              if ($role !== 1) {
                echo 'disabled';
              }  ?>" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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
<div class="tab-pane" id="xrpl_kamis">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_kamis");
      $no = 0;
      while($data = mysqli_fetch_array($query)){
        $no++;
        ?>
        <tr>
          <td ><?= $data['nama_jamke'] ?></td>
          <td ><?= $data['nama_mapel'] ?></td>
          <td ><?= $data['nama'] ?></td>
          <td>
            <a class="btn btn-sm btn-danger
            <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
            if ($role !== 1) {
              echo 'disabled';
            }  ?>" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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
<div class="tab-pane" id="xrpl_jumat">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_jumat");
      $no = 0;
      while($data = mysqli_fetch_array($query)){
        $no++;
        ?>
        <tr>
          <td ><?= $data['nama_jamke'] ?></td>
          <td ><?= $data['nama_mapel'] ?></td>
          <td ><?= $data['nama'] ?></td>
          <td>
            <a class="btn btn-sm btn-danger
            <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
            if ($role !== 1) {
              echo 'disabled';
            }  ?>" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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
<div class="tab-pane" id="xrpl_sabtu">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_x_rpl_sabtu");
      $no = 0;
      while($data = mysqli_fetch_array($query)){
        $no++;
        ?>
        <tr>
          <td ><?= $data['nama_jamke'] ?></td>
          <td ><?= $data['nama_mapel'] ?></td>
          <td ><?= $data['nama'] ?></td>
          <td>
            <a class="btn btn-sm btn-danger
            <?php
                  //fungsi untuk menonaktifkan tombol hapus jadwal
                  //jika role bukan 1(admin)
            if ($role !== 1) {
              echo 'disabled';
            }  ?>" href="?hal=jadwal-delete&id=<?= $data['id_jadwal'] ?>">
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