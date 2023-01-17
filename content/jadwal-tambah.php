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
              <h3 class="box-title">Tambah Jadwal Pelajaran</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="?hal=jadwal-add">
              <div class="box-body">
                
              <!-- select -->
              <div class="form-group">
                  <label for="id_kbm">Waktu</label>
                  <select class="form-control" id="id_kbm" name="id_kbm" required>
                    <option value=""> Pilih Jam </option>
                    <?php
                        $queryjam = mysqli_query($con, "SELECT * FROM view_jam_kbm");
                        while($j = mysqli_fetch_array($queryjam)){
                        echo "<option value='$j[id_kbm]'>$j[nama_hari] | Jam ke - $j[nama_jamke]</option>";
                        }
                    ?>
                  </select>
                </div>

                <!-- select -->
                <div class="form-group">
                  <label for="id_mengajar">Mata Pelajaran</label>
                  <select class="form-control" id="id_mengajar" name="id_mengajar" required>
                    <option value=""> Pilih Mata Pelajaran </option>
                    <?php
                        $query_mengajar = mysqli_query($con, "SELECT * FROM view_mengajar order by id_guru");
                        while($j = mysqli_fetch_array($query_mengajar)){
                        echo "<option value='$j[id_mengajar]'>$j[nama_mapel] | $j[nama_kelas] | $j[nama_komli] | $j[nama_guru]</option>";
                        }
                    ?>
                  </select>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan </button>
                <button type="reset" class="btn btn-warning"><i class="fa fa-eraser"></i> Reset </button>
                <a class="btn btn-danger" href="?hal=jadwal-view"><i class="fa fa-mail-reply"></i> Batal </a>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
</div>