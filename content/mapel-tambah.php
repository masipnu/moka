<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <!-- Tambah -->
      </h1>
    </section>

<!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah Mata Pelajaran</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="?hal=mapel-add">
              <div class="box-body">
                <div class="form-group">
                  <label for="nama_mapel">Nama Mata Pelajaran</label>
                  <input type="text" class="form-control" id="nama_mapel" name="nama_mapel" required>
                </div>

                <!-- select -->
                <div class="form-group">
                  <label for="id_kelas">Kelas</label>
                  <select class="form-control" id="id_kelas" name="id_kelas" required>
                    <option value=""> Pilih Kelas </option>
                    <?php
                        $querykelas = mysqli_query($con, "SELECT * FROM kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli ORDER BY kelas.id_kelas ASC");
                        while($j = mysqli_fetch_array($querykelas)){
                        echo "<option value='$j[id_kelas]'>$j[nama_kelas] - $j[nama_komli]</option>";
                        }
                    ?>
                  </select>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan </button>
                <button type="reset" class="btn btn-warning"><i class="fa fa-eraser"></i> Reset </button>
                <a class="btn btn-danger" href="?hal=mapel-view"><i class="fa fa-mail-reply"></i> Batal </a>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
</div>