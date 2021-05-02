create table if not exists Singer (
	id serial primary key,
	name varchar(250) not null unique,
	created_by integer not null,
	created_at timestamp not null,
	updated_by integer not null,
	updated_at timestamp not null
);

create table if not exists Genre (
	id serial primary key,
	name varchar(100) not null unique,
	created_by integer not null,
	created_at timestamp not null,
	updated_by integer not null,
	updated_at timestamp not null
);

create table if not exists SingerGenre (
	singer_id integer references Singer(id),
	genre_id integer references Genre(id),
	constraint singergenre_pk primary key (singer_id, genre_id)
);

create table if not exists Album (
	id serial primary key,
	name varchar(500) not null,
	prod_year integer not null,
	created_by integer not null,
	created_at timestamp not null,
	updated_by integer not null,
	updated_at timestamp not null
);

create table if not exists SingerAlbum (
	singer_id integer references Singer(id),
	album_id integer references Album(id),
	constraint singeralbum_pk primary key (singer_id, album_id)
);

create table if not exists Song (
	id serial primary key,
	name varchar(500) not null,
	duration integer check(duration > 0) not null,
	album_id integer references Album(id) not null,
	created_by integer not null,
	created_at timestamp not null,
	updated_by integer not null,
	updated_at timestamp not null
);

create table if not exists Collection (
	id serial primary key,
	name varchar(500) not null,
	prod_year integer not null,
	created_by integer not null,
	created_at timestamp not null,
	updated_by integer not null,
	updated_at timestamp not null
);

create table if not exists SongCollection (
	song_id integer references Song(id),
	collection_id integer references Collection(id),
	constraint songcollection_pk primary key (song_id, collection_id)
);