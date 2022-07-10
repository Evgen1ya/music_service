create table if not exists Genres (
	id SERIAL primary key,
	genre_name text not null unique
);

create table if not exists Performers (
	id SERIAL primary key,
	performers_name text not null
);

create table if not exists Performers_genre (
	genre_id integer not null references Genres(id),
	performer_id integer not null references Performers(id),
	constraint pk primary key(genre_id, performer_id)
);

create table if not exists Albums (
	id SERIAL primary key,
	albums_name text not null,
	year_of_issue integer not null check(year_of_issue > 0),
	track integer
);

create table if not exists Performers_album (
	album_id integer not null references Albums(id),
	performer_id integer not null references Performers(id),
	constraint pk_pa primary key(album_id, performer_id)
);

create table if not exists Tracks (
	id SERIAL primary key,
	tracks_name text not null,
	duration numeric not null check(duration > 0),
	album integer
);

create table if not exists Digest (
	id SERIAL primary key,
	digests_name text not null,
	year_of_issue integer not null check(year_of_issue > 0)
);

create table if not exists Digest_traks (
	digests_id integer not null references Digest(id),
	tracks_id integer not null references Tracks(id),
	constraint pk_dt primary key(digests_id, tracks_id)
);

alter table Albums add constraint fk_albums foreign key(track) references Tracks (id);
alter table Tracks add constraint fk_tracks foreign key(album) references Albums (id);
