<?php
   if(!defined('INDEX')) die("");

   $query = mysqli_query($con, "SELECT * FROM kelas WHERE id_kelas='$_GET[id]'");
   $data = mysqli_fetch_array($query);
?>

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
              <h3 class="box-title">Tambah Kelas</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="?hal=kelas-update">
              <div class="box-body">
                <div class="form-group">
                <input type="hidden" name="id" value="<?= $data['id_kelas'] ?>">
                  <label for="nama_kelas">Nama Kelas</label>
                  <input type="text" class="form-control" id="nama_kelas" name="nama_kelas" value="<?= $data['nama_kelas'] ?>" required>
                </div>

                <!-- select -->
                <div class="form-group">
                  <label for="id_komli">Kompetensi Keahlian</label>
                  <select class="form-control" id="id_komli" name="id_komli" required>
                    <option value=""> - Pilih Kompetensi Keahlian - </option>
                    <?php
                        $querykomli = mysqli_query($con, "SELECT * FROM komli");
                        while($j = mysqli_fetch_array($querykomli)){
                            echo "<option value='$j[id_komli]'";
                            if($j['id_komli'] == $data['id_komli']) echo " selected";
                            echo ">$j[nama_komli]</option>";
                        }
                    ?>
                  </select>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan </button>
                <button type="reset" class="btn btn-warning"><i class="fa fa-eraser"></i> Reset </button>
                <a class="btn btn-danger" href="?hal=kelas-view"><i class="fa fa-mail-reply"></i> Batal </a>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
</div>