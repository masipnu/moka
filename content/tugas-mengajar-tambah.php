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
              <h3 class="box-title">Tambah Tugas Mengajar</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="?hal=tugas-mengajar-add">
              <div class="box-body">
                
              <!-- select -->
              <div class="form-group">
                  <label for="id_guru">Nama Guru</label>
                  <select class="form-control" id="id_guru" name="id_guru" required>
                    <option value=""> Pilih Guru </option>
                    <?php
                        $queryguru = mysqli_query($con, "SELECT * FROM view_guru_simple");
                        while($j = mysqli_fetch_array($queryguru)){
                        echo "<option value='$j[id_guru]'>$j[id_guru] - $j[nama_guru]</option>";
                        }
                    ?>
                  </select>
                </div>

                <!-- select -->
                <div class="form-group">
                  <label for="id_mapel">Mata Pelajaran</label>
                  <select class="form-control" id="id_mapel" name="id_mapel" required>
                    <option value=""> Pilih Mata Pelajaran </option>
                    <?php
                        $querymapel = mysqli_query($con, "SELECT * FROM view_mapel_belum_ditugaskan order by nama_mapel");
                        while($j = mysqli_fetch_array($querymapel)){
                        echo "<option value='$j[id_mapel]'>$j[nama_mapel] - $j[nama_kelas] $j[nama_komli]</option>";
                        }
                    ?>
                  </select>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan </button>
                <button type="reset" class="btn btn-warning"><i class="fa fa-eraser"></i> Reset </button>
                <a class="btn btn-danger" href="?hal=tugas-mengajar-view"><i class="fa fa-mail-reply"></i> Batal </a>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
</div>