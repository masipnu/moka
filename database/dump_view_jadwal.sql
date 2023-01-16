CREATE VIEW view_jadwal_x_pbs_4 AS
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
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

-- next dump

CREATE VIEW view_jadwal_x_pbs_5 AS
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
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_x_pbs_6 AS
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
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

-- view jadwal xi_rpl
CREATE VIEW view_jadwal_xi_rpl_1 AS
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
and hari.id_hari=1
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_rpl_2 AS
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
and hari.id_hari=2
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_rpl_3 AS
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
and hari.id_hari=3
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_rpl_4 AS
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
and hari.id_hari=4
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_rpl_5 AS
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
and hari.id_hari=5
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_rpl_6 AS
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
and hari.id_hari=6
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

-- jadwal_xi_pbs
CREATE VIEW view_jadwal_xi_pbs_1 AS
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
and hari.id_hari=1
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_pbs_2 AS
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
and hari.id_hari=2
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_pbs_3 AS
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
and hari.id_hari=3
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_pbs_4 AS
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
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_pbs_5 AS
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
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xi_pbs_6 AS
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
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

-- view jadwal XII_rpl
CREATE VIEW view_jadwal_xii_rpl_1 AS
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
and hari.id_hari=1
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_rpl_2 AS
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
and hari.id_hari=2
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_rpl_3 AS
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
and hari.id_hari=3
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_rpl_4 AS
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
and hari.id_hari=4
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_rpl_5 AS
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
and hari.id_hari=5
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_rpl_6 AS
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
and hari.id_hari=6
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc;

-- jadwal_XII_pbs
CREATE VIEW view_jadwal_xii_pbs_1 AS
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
and hari.id_hari=1
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_pbs_2 AS
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
and hari.id_hari=2
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_pbs_3 AS
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
and hari.id_hari=3
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_pbs_4 AS
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
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_pbs_5 AS
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
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;

CREATE VIEW view_jadwal_xii_pbs_6 AS
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
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc;