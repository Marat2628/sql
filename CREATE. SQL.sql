REATE TABLE IF NOT EXISTS Genre(
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Singers(
    singer_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL 
);

CREATE TABLE IF NOT EXISTS genre_singers (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singers(singer_id),
	genre_id INTEGER NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Albums(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_album (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singers(singer_id),
	album_id INTEGER NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Tracks(
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    duration NUMERIC NOT NULL,
    album_id INTEGER NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collections(
    collections_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    data INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collections_traks (
    id SERIAL PRIMARY KEY,
    track_id INTEGER NOT NULL REFERENCES Tracks(track_id),
    collections_id INTEGER NOT NULL REFERENCES Collections(collections_id)
);

UPDATE collections
   SET "data" = 2019
 WHERE collections_id = 2;