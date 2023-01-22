<div class="col-md-6">
  <!-- Custom Tabs -->
  <div class="box-header">
    <b>Kelas XII </b>- Perbankan Syariah
  </div>
  <!-- /.box-header -->
  <div class="nav-tabs-custom">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#xiipbs_senin" data-toggle="tab">Senin</a></li>
      <li><a href="#xiipbs_selasa" data-toggle="tab">Selasa</a></li>
      <li><a href="#xiipbs_rabu" data-toggle="tab">Rabu</a></li>
      <li><a href="#xiipbs_kamis" data-toggle="tab">Kamis</a></li>
      <li><a href="#xiipbs_jumat" data-toggle="tab">Jum'at</a></li>
      <li><a href="#xiipbs_sabtu" data-toggle="tab">Sabtu</a></li>
      <!-- <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="xiipbs_senin">
        
        <div class="box-body table-responsive no-padding">
          <table class="table table-hover">
            <tr>
              <th>Jam ke</th>
              <th >Mata Pelajaran</th>
              <th >Guru</th>
            </tr>
            <?php
            $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_senin");
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
    <div class="tab-pane" id="xiipbs_selasa">
      <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
          <tr>
            <th>Jam ke</th>
            <th >Mata Pelajaran</th>
            <th >Guru</th>
          </tr>
          <?php
          $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_selasa");
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
  <div class="tab-pane" id="xiipbs_rabu">
    <div class="box-body table-responsive no-padding">
      <table class="table table-hover">
        <tr>
          <th>Jam ke</th>
          <th >Mata Pelajaran</th>
          <th >Guru</th>
        </tr>
        <?php
        $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_rabu");
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
<div class="tab-pane" id="xiipbs_kamis">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_kamis");
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
<div class="tab-pane" id="xiipbs_jumat">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_jumat");
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
<div class="tab-pane" id="xiipbs_sabtu">
  <div class="box-body table-responsive no-padding">
    <table class="table table-hover">
      <tr>
        <th>Jam ke</th>
        <th >Mata Pelajaran</th>
        <th >Guru</th>
      </tr>
      <?php
      $query = mysqli_query($con, "SELECT * FROM view_jadwal_xii_pbs_sabtu");
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