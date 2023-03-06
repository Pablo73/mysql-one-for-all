-- Descomente e altere as linhas abaixo:

CREATE TABLE SpotifyClone.favorite_song(
id_user INT NOT NULL,
id_song INT NOT NULL,
FOREIGN KEY (id_song) REFERENCES song(id_song),
FOREIGN KEY (id_user) REFERENCES user(id_user),
CONSTRAINT PRIMARY KEY(id_song, id_user)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_song (id_user, id_song)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);

