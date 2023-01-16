SELECT DISTINCT
jadwal_kbm.id_kbm, guru.nama, mapel.nama_mapel, hari.nama_hari, jamke.nama_jamke
from jadwal_kbm
LEFT JOIN jam_kbm on jadwal_kbm.id_kbm=jam_kbm.id_kbm
LEFT JOIN hari ON jam_kbm.id_hari=hari.id_hari
LEFT JOIN jamke ON jam_kbm.id_hari=hari.id_hari
LEFT JOIN mengajar ON jadwal_kbm.id_mengajar=mengajar.id_mengajar
LEFT JOIN guru ON mengajar.id_guru=guru.id_guru
LEFT JOIN mapel ON mengajar.id_mapel=mapel.id_mapel