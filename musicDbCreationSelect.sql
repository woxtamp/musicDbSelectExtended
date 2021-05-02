-- количество исполнителей в каждом жанре:
SELECT name, COUNT(name) FROM Genre g
JOIN SingerGenre sg ON g.id = sg.genre_id
	GROUP BY name;

/*
получаем следующие результаты (в алфавитном порядке):

поп 1
рок 3
рэп 2
шансон 1
электропоп 1
*/

-- количество треков, вошедших в альбомы 2019-2020 годов:
SELECT COUNT(*) FROM Song s
JOIN Album a ON s.album_id = a.id
	WHERE a.prod_year BETWEEN 2019 AND 2020;

/*
получаем следующие результаты:

2
*/

-- средняя продолжительность треков по каждому альбому:
SELECT a.name, AVG(s.duration) FROM Album a
JOIN Song s ON a.id = s.album_id
	GROUP BY a.name
	ORDER BY a.name;

/*
получаем следующие результаты (в алфавитном порядке):

The Wait 292.0000000000000000
WHEN WE ALL FALL ASLEEP, WHERE DO WE GO? 93.0000000000000000
Вечный жид 212.5000000000000000
Жиган-лимон 216.0000000000000000
Облака 214.5000000000000000
Проклятье морей 372.0000000000000000
Чёрное солнце 269.6666666666666667
Что нам делать в Греции 37.0000000000000000
*/

-- все исполнители, которые не выпустили альбомы в 2020 году:
SELECT s.name FROM Singer s
JOIN SingerAlbum sa ON s.id = sa.singer_id
JOIN Album a ON sa.album_id = a.id
	WHERE a.prod_year != 2020
	ORDER BY s.name;

/*
получаем следующие результаты (в алфавитном порядке):

Billie Eilish
Metallica
OXXXYMIRON
Андрей Губин
Ария
Би-2
Каста
Михаил Круг
*/

-- названия сборников, в которых присутствует конкретный исполнитель (Ария):
SELECT DISTINCT c.name FROM Collection c
JOIN SongCollection sc ON c.id = sc.collection_id
JOIN Song s ON sc.song_id = s.id
JOIN Album a ON s.album_id = a.id
JOIN SingerAlbum sa ON a.id = sa.album_id
JOIN Singer si ON sa.singer_id = si.id
	WHERE si.name = 'Ария'
	ORDER BY c.name;

/*
получаем следующие результаты (в алфавитном порядке):

Русские песни
Хиты русского рока 2020
*/

-- название альбомов, в которых присутствуют исполнители более 1 жанра:
SELECT a.name FROM Album a
JOIN SingerAlbum sa ON a.id = sa.album_id
JOIN Singer s ON sa.singer_id = s.id
JOIN SingerGenre sg ON s.id = sg.singer_id
JOIN Genre g ON sg.genre_id = g.id
	GROUP by a.name
	HAVING COUNT(*) > 1
	ORDER BY a.name;

/*
получаем следующие результаты (в алфавитном порядке):

WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?
*/

-- наименование треков, которые не входят в сборники:
SELECT s.name FROM Song s
LEFT JOIN SongCollection sc ON s.id = sc.song_id
	WHERE sc.song_id is null
	ORDER BY s.name;

/*
результатов при выполнении запроса не будет, ибо песен не входящих в сборники не существует
*/

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек:
SELECT s.name FROM Singer s
JOIN SingerAlbum sa ON s.id = sa.singer_id
JOIN Album a ON sa.album_id = a.id
JOIN Song so ON a.id = so.album_id
	WHERE so.duration = (SELECT MIN(duration) FROM Song)
	ORDER BY s.name;

/*
получаем следующие результаты (в алфавитном порядке):

Billie Eilish
*/

-- название альбомов, содержащих наименьшее количество треков:
SELECT a.name FROM Album a
JOIN Song s ON a.id = s.album_id
	GROUP BY a.name
	HAVING COUNT(*) <= ALL(SELECT COUNT(*) FROM Album a JOIN Song s ON a.id = s.album_id GROUP BY a.name)
	ORDER BY a.name;

/*
получаем следующие результаты (в алфавитном порядке):

The Wait
Что нам делать в Греции
*/
