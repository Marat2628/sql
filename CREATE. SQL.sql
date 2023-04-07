CREATE TABLE IF NOT EXISTS Genre(
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

CREATE TABLE IF NOT EXISTS Compilation(
    compilation_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    data INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation_traks (
    id SERIAL PRIMARY KEY,
    track_id INTEGER NOT NULL REFERENCES Tracks(track_id),
    compilation_id INTEGER NOT NULL REFERENCES Compilation(compilation_id)
);

UPDATE compilation
   SET "data" = 2019
 WHERE compilation_id = 2;