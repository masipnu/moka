select * from hari
where id_hari=(select dayofweek(now()))

SELECT * FROM view_siswa_all
WHERE id_kelas 

select * from jadwal_kbm
join jam_kbm using(id_kbm)
where jam_kbm.id_hari=(select dayofweek(now()))

where id_mengajar=mengajar.id_mengajar
and id_guru=GTK020
id_mapel=mapel.id_mapel
id_kelas=mapel.id_kelas

select siswa.id_siswa from siswa
where id_kelas=

tampilkan siswa
yang kelasnya=kelas
yang jadwalnya hari ini guru xxx

select id_mengajar from mengajar
join jam_kbm using(id_kbm)
where jam_kbm.id_hari=(select dayofweek(now()))

select * from view_mengajar_today
where id_guru=GTK020

select siswa.id_siswa from siswa
join kelas using(id_kelas)
join mapel using(id_mapel)
join mengajar(id_mapel)
where id_mengajar=(select id_mengajar from view_id_mengajar_today)
and id_guru='GTK020'

