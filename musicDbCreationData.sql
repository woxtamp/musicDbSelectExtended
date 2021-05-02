INSERT INTO Genre(name, created_by, created_at, updated_by, updated_at)
	VALUES
	('рок', 1, now(), 1, now()),
	('поп', 1, now(), 1, now()),
	('рэп', 1, now(), 1, now()),
	('шансон', 1, now(), 1, now()),
	('электропоп', 1, now(), 1, now());

INSERT INTO Singer(name, created_by, created_at, updated_by, updated_at)
	VALUES
	('Ария', 1, now(), 1, now()),
	('Андрей Губин', 1, now(), 1, now()),
	('Каста', 1, now(), 1, now()),
	('Михаил Круг', 1, now(), 1, now()),
	('Billie Eilish', 1, now(), 1, now()),
	('Metallica', 1, now(), 1, now()),
	('OXXXYMIRON', 1, now(), 1, now()),
	('Би-2', 1, now(), 1, now());

INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(5, 3),
	(6, 1),
	(7, 3),
	(8, 1);

INSERT INTO Album(name, prod_year, created_by, created_at, updated_by, updated_at)
	VALUES
	('Проклятье морей', '2018', 1, now(), 1, now()),
	('Облака', '2000', 1, now(), 1, now()),
	('Что нам делать в Греции', '2002', 1, now(), 1, now()),
	('Жиган-лимон', '1994', 1, now(), 1, now()),
	('The Wait', '2018', 1, now(), 1, now()),
	('Вечный жид', '2011', 1, now(), 1, now()),
	('Чёрное солнце', '2018', 1, now(), 1, now()),
	('WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', '2019', 1, now(), 1, now());

INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 8),
	(6, 7),
	(7, 6),
	(8, 5);

INSERT INTO Song(name, duration, album_id, created_by, created_at, updated_by, updated_at)
	VALUES
	('Варяг', 398, 1, 1, now(), 1, now()),
	('Эра Люцифера', 346, 1, 1, now(), 1, now()),
	('Облака', 203, 2, 1, now(), 1, now()),
	('Никогда', 226, 2, 1, now(), 1, now()),
	('Чисто В Стиле Нашей...', 37, 3, 1, now(), 1, now()),
	('Девочка-пай', 257, 4, 1, now(), 1, now()),
	('Мой фраер', 175, 4, 1, now(), 1, now()),
	('The Wait', 292, 5, 1, now(), 1, now()),
	('Тентакли', 221, 6, 1, now(), 1, now()),
	('До сих пор MC', 204, 6, 1, now(), 1, now()),
	('Философский камень', 286, 7, 1, now(), 1, now()),
	('Виски', 197, 7, 1, now(), 1, now()),
	('Мой друг', 326, 7, 1, now(), 1, now()),
	('!!!!!!!', 13, 8, 1, now(), 1, now()),
	('8', 173, 8, 1, now(), 1, now());

INSERT INTO Collection(name, prod_year, created_by, created_at, updated_by, updated_at)
	VALUES
	('Хиты русского рока 2020', 2020, 1, now(), 1, now()),
	('Лучшая музыка в машину', 2019, 1, now(), 1, now()),
	('Лучшие песни 2019', 2019, 1, now(), 1, now()),
	('Классика шансона', 2021, 1, now(), 1, now()),
	('Хиты Billie Eilish', 2020, 1, now(), 1, now()),
	('Классика русского рока', 2018, 1, now(), 1, now()),
	('РЭП ВОЙСКА', 2012, 1, now(), 1, now()),
	('Русские песни', 2020, 1, now(), 1, now());

INSERT INTO SongCollection(song_id, collection_id)
	VALUES
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 7),
	(6, 4),
	(7, 4),
	(8, 3),
	(9, 7),
	(10, 7),
	(11, 6),
	(12, 1),
	(13, 6),
	(14, 5),
	(15, 5),
	(1, 8),
	(6, 8);