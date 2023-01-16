//melihat tugas mengajar
select
guru.id_guru,
guru.nama,
mapel.nama_mapel,
kelas.nama_kelas,
komli.nama_komli
from guru
left join mengajar on guru.id_guru=mengajar.id_guru
left join mapel on mengajar.id_mapel=mapel.id_mapel
left join kelas on mapel.id_kelas=kelas.id_kelas
left join komli on kelas.id_komli=komli.id_komli