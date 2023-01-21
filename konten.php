<?php
   if(!defined('INDEX')) die("");

   // asli dari sourcecode
   // $halaman = array("dashboard", 
   //    "pegawai", "pegawai_tambah", "pegawai_insert",
   //    "pegawai_edit", "pegawai_update", "pegawai_hapus",
   //    "jabatan", "jabatan_tambah", "jabatan_insert", 
   //    "jabatan_edit", "jabatan_update", "jabatan_hapus");

   // modif-moka
   $halaman=[
      "dashboard",
      // identitas-sekolah
      "identitas-sekolah-view",
      "identitas-sekolah-tambah",
      "identitas-sekolah-add",
      "identitas-sekolah-edit",
      "identitas-sekolah-update",
      "identitas-sekolah-delete",
      // tapel
      "tapel-view",
      "tapel-tambah",
      "tapel-add",
      "tapel-edit",
      "tapel-update",
      "tapel-delete",
      // semester
      "semester-view",
      "semester-tambah",
      "semester-add",
      "semester-edit",
      "semester-update",
      "semester-delete",
      // jurusan
      "komli-view",
      "komli-tambah",
      "komli-add",
      "komli-edit",
      "komli-update",
      "komli-delete",
      // kelas
      "kelas-view",
      "kelas-tambah",
      "kelas-add",
      "kelas-edit",
      "kelas-update",
      "kelas-delete",
      // mapel
      "mapel-view",
      "mapel-tambah",
      "mapel-add",
      "mapel-edit",
      "mapel-update",
      "mapel-delete",
      // pelajaran
      "jadwal-view",
      "jadwal-tambah",
      "jadwal-add",
      "jadwal-edit",
      "jadwal-update",
      "jadwal-delete",
      // guru
      "guru-view",
      "guru-tambah",
      "guru-add",
      "guru-edit",
      "guru-update",
      "guru-delete",
      // siswa
      "siswa-view",
      "siswa-tambah",
      "siswa-add",
      "siswa-edit",
      "siswa-update",
      "siswa-delete",
      // ortu
      "ortu-view",
      "ortu-tambah",
      "ortu-add",
      "ortu-edit",
      "ortu-update",
      "ortu-delete",
      // saran
      "saran-view",
      "saran-tambah",
      "saran-add",
      "saran-edit",
      "saran-update",
      "saran-delete",
      // user
      "user-view",
      "user-tambah",
      "user-add",
      "user-edit",
      "user-update",
      "user-delete",
      // presensi-siswa
      "presensi-siswa-view",
      "presensi-siswa-tambah",
      "presensi-siswa-add",
      "presensi-siswa-edit",
      "presensi-siswa-update",
      "presensi-siswa-delete",
      "presensi-siswa-test",
      // tugas-mengajar
      "tugas-mengajar-view",
      "tugas-mengajar-tambah",
      "tugas-mengajar-add",
      "tugas-mengajar-edit",
      "tugas-mengajar-update",
      "tugas-mengajar-delete"
   ];

   if(isset($_GET['hal'])) $hal = $_GET['hal'];
   else $hal = "dashboard";

   foreach($halaman as $h){
      if($hal == $h){
         include "content/$h.php";
         break;
      }
   }
?>