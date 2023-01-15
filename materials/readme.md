# ☕ Moka
 Monitoring kehadiran siswa dan guru SMK BP Subulul Huda Kembangsawit, Rejosari, Kebonsari, Madiun

### 📕 Deskripsi
☕ Moka adalah aplikasi berbasis website yang bisa diakses melalui smartphone maupun komputer yang digunakan untuk membuat presensi kegiatan belajar mengajar siswa, presensi guru serta membuat rekapitulasinya secara mudah dan sederhana.

### 📙 Latar Belakang
Proyek pengembangan aplikasi ini berawal dari kondisi kegiatan beajar mengajar di SMK BP Subulul Huda yang kurang maksimal dari segi ketertiban dan administrasi. Beberapa poin hasil pengamatan kami meliputi:
- Kurang tepat waktu baik guru maupun siswa dalam memulai proses kegiatan belajar mengajar;
- Perizinan yang sering kurang jelas, sehingga guru yang mengajar tidak mengisi kolom presensi siswa;
- Buku jurnal dan absensi sering hilang dan tertinggal di kelas bahkan rusak/ tidak layak;
- Proses rekap jurnal dan absen yang lama dan membutuhkan ketelitian;
- Untuk rekap kehadiran guru yang dilakukan bendahara terlalu lama karena harus meneliti buku kehadiran satu per satu;
- Waka kesiswaan / BK tidak bisa melihan presensi siswa secara realtime, harus menunggu rekapitulasi, sehingga jika terjadi pelanggaran membutuhkan waktu yang tidak sebentar untuk menentukan tindak lanjutnya.
Melihat kondisi di lapangan yang kurang lancar dan kurangnya dukungan dari segi administrasi pencatatan/ pembukuan, maka hal ini menggugah hati pengembang untuk turut membantu kelancaran kegiatan belajar mengajar di SMK BP Subulul Huda dengan cara memwujudkan sebuah aplikasi yang dapat mengatasi masalah di atas.
---

### 📗 Tujuan
Di antara tujuan dibuatnya aplikasi ini adalah:
- Mengatasi permasalahan-permasalahan di atas;
- Memaksimalkan sumber daya yang dimiliki oleh sekolah, khususnya di bidang teknologi
- Menerapkan digitalisasi arsip
- Membuat semua proses administratif menjadi lebih efektif dan efisien

---

### 🥇 Key Features
Beberapa fitur yang akan dikembangkan dalam proyek aplikasi ☕ moka adalah:
- Role : Admin
  - CRUD semua entitas
- Role : Operator
  - CRUD user guru, wali kelas, wali murid, siswa, kepala sekolah
  - CRUD identitas sekolah
  - CRUD semester dan tahun pelajaran aktif
  - CRUD kelas dan jurusan
  - CRUD jadwal pelajaran
  - -R-D usulan dan saran
  - Download dan cetak rekap presensi
- Role : User (Guru)
  - Read : Jadwal Pelajaran
  - Create-Read-Update : presensi siswa
  - Create-Read-Update : presensi personal
  - CRUD : catatan siswa
- Role : User (Wali Kelas)
  - Read : daftar siswa-siswi perwalian
  - Update : rating siswa-siswi dengan ⭐ 1-10
  - Update : catatan prestasi siswa-siswi
  - Update : catatan pelanggaran siswa-siswi
  - Update : profil personal
  - Create : respon usulan, keluhan, masukan wali murid
  - Create : respon usulan, keluhan, masukan siswa-siswi
  - Create : respon catatan siswa-siswi dari guru mapel
- Role : User (Wali Murid)
  - Read : presensi putra/putrinya
  - Create : usulan, keluhan, masukan
  - Update profil personal
- Role : User (Siswa)
  - Read : rekap presensi pribadi
  - Update : profil personal
  - Create : usulan, keluhan, masukan kepada wali kelas
- Role : Manager (Kepala Sekolah)
  - Read : Profil sekolah
  - Read : Rekap dan grafik presensi siswa
  - Read : Rekap dan grafik presensi guru
  - Update : Profil personal

---

### 🤹 Tim Pengembang
Untuk sementara waktu proyek aplikasi ini dikembangkan secara personal oleh saya pribadi (pemilik repo), sembari melihat progres perkembangan aplikasi ini. Menyesuaikan dengan perkembangan teknologi, jika kedepan aplikasi ini dirasa perlu pengembangan (baik penambahan fitur maupun pengurangan, dsb) maka insyaallah kami akan merekrut personalia lain untuk turut berkontribusi dalam pengembangan proyek aplikasi ini.

Untuk sementara aplikasi ini dikembangkan secara lokal dan dihosting di akun hosting sekolah kami, namun source code tetap tersedia secara publik di akun repo [☕ moka](https://github.io/masipnu/moka.github.io).

---

### ⏲️ Timeline

- 2023-01-08
  - Initial start
    - Database structure design
    - Database implement to local database server
- 2023-01-10
  - App Design
    - Flowchart design
    - UI/ UX design prototype
  - Database design
    - re-structure database design
    - deploy to local server
- 2023-01-11
  - Coding part #1
    - Database config
    - Making pages:
      - landing
      - index
      - login
      - admin dashboard
      - logout
      - crud identitas sekolah
      - crud jurusan
      - crud kelas
      - crud tapel
      - crud semester
- 2023-01-12
  - Coding part #2
    - Making pages:
      - crud guru
      - crud siswa
      - crud wali kelas
      - crud operator
      - crud user
      - crud presensi guru
      - crud presensi siswa
- 2023-01-13
  - Coding part #3      
    - Add modules:
      - download presensi guru
      - print presensi guru
      - download presensi siswa
      - print presensi siswa
    - Add pages:
      - guru-dashboard
      - walas-dashboard
      - siswa-dashboard
      - ortu-dashboard
      - ks-dashboard
  - Deployment
    - Local deployment:
      - initial testing
      - bug hunting with waka kesiswaan
      - bug-fixing
      - pre-release app
- 2023-01-14
  - Make docs:
    - Written documentations:
      - Introduction, etc
      - Usage manual
      - Hope
      - Closing
    - Video explanation
  - Insiders publication
    - to waka kesiswaan
    - to some teachers
- 2023-01-15
  - Deployment
    - pack app
    - deploy to school's hosting account
    - upload app to host
    - config app
    - web testing
    - final test :
      - via smartphone
      - via pc
- 2023-01-16
  - Publication to students
  - Initial use for local school

---

### 📘 Penutup
Demikian perkenalan tentang aplikasi ☕ moka. Semoga proses pengembangan aplikasi ini diberikan kelancaran dan kemudahan sehingga bisa selesai dengan rencana timeline serta sesuai dengan yang diharapkan.

Segala bentuk dukungan untuk penyelesaian proyek ini sangan kami apresiasi, maka kepada para pembaca yang budiman dipersilahkan jika berkenan memberikan dukungan dalam bentuk apapun. _Jazakumullahu khairan 👐._

Salam hangat 🙂

---

Made with 💓 by [masipnu](https://s.id/masipnu)

©️ 2023