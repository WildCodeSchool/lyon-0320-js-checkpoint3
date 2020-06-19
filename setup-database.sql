CREATE DATABASE playlists CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci;
USE playlists;

CREATE TABLE IF NOT EXISTS playlist(
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(128) NOT NULL,
genre VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS track(
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
playlist_id INTEGER NOT NULL,
title VARCHAR(128) NOT NULL,
artist VARCHAR(128) NOT NULL,
album_picture VARCHAR(256) NULL,
youtube_url VARCHAR(128) NULL,
FOREIGN KEY (playlist_id) REFERENCES playlist(id)
);