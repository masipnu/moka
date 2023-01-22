<!DOCTYPE html>
<html>
    <?php include "parts/head.php"; ?>

<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>☕ Moka</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Silahkan login terlebih dahulu</p>

    <form action="ceklogin.php" method="post">
      <!-- username -->
    <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Username" name="username" required>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <!-- password -->
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <!-- select -->
      <div class="form-group">
                  <select class="form-control" name="id_role" required>
                  <option value="" > Pilih Role </option>
                    <option value="3" >  Guru  </option>
                    <option value="5" >  Siswa  </option>
                    <option value="4" >  Orang Tua  </option>
                    <option value="6" >  Kepala Sekolah  </option>
                    <option value="2" >  Operator  </option>
                    <option value="1" >  Admin  </option>
                  </select>
                </div>
      <div class="row">
        <!-- <div class="col-xs-8">
          <div class="checkbox">
            <label>
              <input type="checkbox"> Ingat Saya
            </label>
          </div>
          
        </div> -->
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Masuk</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- <script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script> -->
</body>
</html>
