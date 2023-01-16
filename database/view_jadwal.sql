select * from jadwal_kbm, mengajar
where jadwal_kbm.id_mengajar=mengajar.id_mengajar


select * from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)

// view_jadwal_all
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
kelas.nama_kelas,
komli.nama_komli,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)

//view_jadwal_x_rpl
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"

//view_jadwal_x_pbs
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Perbankan Syariah"

//view_jadwal_xi_rpl
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and komli.nama_komli="Rekayasa Perangkat Lunak"

//view_jadwal_xi_pbs
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and komli.nama_komli="Perbankan Syariah"

//view_jadwal_xii_rpl
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and komli.nama_komli="Rekayasa Perangkat Lunak"

//view_jadwal_xii_pbs
select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and komli.nama_komli="Perbankan Syariah"