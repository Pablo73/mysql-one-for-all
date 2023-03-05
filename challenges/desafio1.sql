-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.hiring_plan(
    id_plan INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_plan VARCHAR(50) NOT NULL,
    price DECIMAL(6, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
    id_artist INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_artist VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_album VARCHAR(50) NOT NULL,
    release_year YEAR NOT NULL,
    id_artist INT NOT NULL,
    FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) engine = InnoDB;

CREATE TABLE SpotifyClone.song(
    id_song INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_song VARCHAR(50) NOT NULL,
    duration_in_seconds INT,
    id_album INT NOT NULL,
    id_artist INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES album(id_album),
    FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) engine = InnoDB;

CREATE TABLE SpotifyClone.user(
    id_user INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    id_plan INT NOT NULL,
    signature_date DATE NOT NULL,
    FOREIGN KEY (id_plan) REFERENCES hiring_plan(id_plan)
) engine = InnoDB;

CREATE TABLE SpotifyClone.playback_history(
   id_song INT NOT NULL,
   id_user INT NOT NULL,
   date_playback DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (id_song) REFERENCES song(id_song),
   FOREIGN KEY (id_user) REFERENCES user(id_user),
   CONSTRAINT PRIMARY KEY(id_song, id_user)
) engine = InnoDB;

CREATE TABLE SpotifyClone.following_artists(
   id_user INT NOT NULL,
   id_artist INT NOT NULL,
   FOREIGN KEY (id_user) REFERENCES user(id_user),
   FOREIGN KEY (id_artist) REFERENCES artists(id_artist),
   CONSTRAINT PRIMARY KEY(id_user, id_artist)
) engine = InnoDB;




INSERT INTO SpotifyClone.hiring_plan (name_plan, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99),
  ('pessoal', 6.99);


INSERT INTO SpotifyClone.artists (name_artist)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

  INSERT INTO SpotifyClone.album (name_album, release_year, id_artist)
VALUES
  ('Renaissance', 2022, 1),
  ('Jazz', 1978, 2),
  ('Hot Space', 1982, 2),
  ('Falso Brilhante', 1998,3),
  ('Vento de Maio', 2001, 3),
  ('QVVJFA?', 2003, 4),
  ('Somewhere Far Beyond', 2007, 5),
  ('Nina I Put A Spell On You', 2012, 6);

  INSERT INTO SpotifyClone.user (name_user, age, id_plan, signature_date)
VALUES
  ('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin', 58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 2, '2017-12-30'),
  ('Martin Fowler', 46, 2, '2017-01-17'),
  ('Sandi Metz', 58, 2, '2018-04-29'),
  ('Paulo Freire', 19, 3, '2018-02-14'),
  ('Bell Hooks', 26, 3, '2018-01-05'),
  ('Christopher Alexander', 85, 4, '2019-06-05'),
  ('Judith Butler', 45, 4, '2020-05-13'),
  ('Jorge Amado', 58, 4, '2017-02-17');

   INSERT INTO SpotifyClone.song (name_song, id_album, duration_in_seconds, id_artist)
VALUES
  ('BREAK MY SOUL', 1, 279, 1),
  ("VIRGO'S GROOVE", 1, 369, 1),
  ("ALIEN SUPERSTAR", 1, 116, 1),
  ("Don't Stop Me Now", 2, 203, 2),
  ("Under Pressure", 3, 152, 2),
  ("Como Nossos Pais", 4, 105, 3),
  ("O Medo de Amar é o Medo de Ser Livre", 5, 207, 3),
  ("Samba em Paris", 6, 267, 4),
  ("The Bard's Song", 7, 244, 5),
  ("Feeling Good", 8, 100, 6);

   INSERT INTO SpotifyClone.playback_history (id_song, date_playback, id_user)
VALUES
  (8, '2022-02-28 10:45:55', 1),
  (2, '2020-05-02 05:30:35', 1),
  (10, '2020-03-06 11:22:33', 1),
  (10, '2022-08-05 08:05:17', 2),
  (7, '2020-01-02 07:40:33', 2),
  (10, '2020-11-13 16:55:13', 3),
  (2, '2020-12-05 18:38:30', 3),
  (8, '2021-08-15 17:10:10', 4),
  (8, '2022-01-09 01:44:33', 5),
  (5, '2020-08-06 15:23:43', 5),
  (7, '2017-01-24 00:31:17', 6),
  (1, '2017-10-12 12:35:20', 6),
  (4, '2011-12-15 22:30:49', 7),
  (4, '2012-03-17 14:56:41', 8),
  (9, '2022-02-24 21:14:22', 9),
  (3, '2015-12-13 08:30:22', 10);

     INSERT INTO SpotifyClone.following_artists (id_user, id_artist)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);
 

