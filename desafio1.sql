CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.planos(
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(20) NOT NULL,
    valor FLOAT NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.pessoa_artista(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(40) NOT NULL
) engine = InnoDB;


CREATE TABLE SpotifyClone.pessoa_usuaria(
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	usuario VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_id INT,
	FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguidores(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    artista_id INT,
        FOREIGN KEY (usuario_id) REFERENCES pessoa_usuaria (usuario_id),
        FOREIGN KEY (artista_id) REFERENCES pessoa_artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(100),
    ano_lancamento INT,
    artista_id INT,
	FOREIGN KEY (artista_id) REFERENCES pessoa_artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
    cancoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cancoes VARCHAR(100) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT,
	FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.acessos(
    acesso_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	data_reproducao DATETIME NOT NULL,
    usuario_id INT,
	FOREIGN KEY (usuario_id) REFERENCES pessoa_usuaria (usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor)
VALUES
  ('gratuito', 0),
  ('pessoal', 6.99),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.pessoa_artista (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Tyler Isle'),
  ('Fog'),
  ('Freedie Shannon');

INSERT INTO SpotifyClone.pessoa_usuaria (usuario, idade, data_assinatura)
VALUES
  ('Thati', 23, '2019-10-20'),
  ('Cintia', 35, '2017-12-30'),
  ('Bill', 20, '2019-06-05'),
  ('Roger', 45, '2020-05-13'),
  ('Norman', 58, '2017-02-17'),
  ('Patrick', 33, '2017-01-06'),
  ('Vivian', 26, '2018-01-05'),
  ('Carol', 19, '2018-02-14'),
  ('Angelina', 42, '2018-04-29'),
  ('Paul', 46, '2017-01-17');

INSERT INTO SpotifyClone.seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(1, 6),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 6),
(5, 4),
(5, 5),
(6, 5),
(6, 3),
(6, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 4),
(9, 5),
(9, 6),
(9, 3),
(10, 2),
(10, 5);

INSERT INTO SpotifyClone.albuns (album, artista_id, ano_lancamento)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 6, 2001),
  ('Library of liberty', 6, 2003),
  ('Chained Down', 4, 2007),
  ('Cabinet of fools', 4, 2012),
  ('No guarantees', 4, 2015),
  ('Apparatus', 5, 2015);

INSERT INTO SpotifyClone.cancoes (cancoes, duracao_segundos, album_id)
VALUES
  ('Soul For Us', 200, 1),
  ('Reflections Of Magic', 163, 1),
  ('Dance With Her Own', 116, 1),
  ('Troubles Of My Inner Fire', 203, 2),
  ('Time Fireworks', 152, 2),
  ('Magic Circus', 105, 3),
  ('Honey, So Do I', 207, 3),
  ('Sweetie, Let\'s Go Wild', 139, 3),
  ('She Knows', 244, 3),
  ('Fantasy For Me', 100, 4),
  ('Celebration Of More', 146, 4),
  ('Rock His Everything', 223, 4),
  ('Home Forever', 231, 4),
  ('Diamond Power', 241, 4),
  ('Let\'s Be Silly', 132, 4),
  ('Thang Of Thunder', 240, 5),
  ('Words Of Her Life', 185, 5),
  ('Without My Streets', 176, 5),
  ('Need Of The Evening', 190, 6),
  ('History Of My Roses', 222, 6),
  ('Without My Love', 111, 6),
  ('Walking And Game', 123, 6),
  ('Young And Father', 197, 6),
  ('Finding My Traditions', 179, 7),
  ('Walking And Man', 229, 7),
  ('Hard And Time', 135, 7),
  ('Honey, I\'m A Lone Wolf', 150, 7),
  ('She Thinks I Won\'t Stay Tonight', 166, 8),
  ('He Heard You\'re Bad For Me', 154, 8),
  ('He Hopes We Can\'t Stay', 210, 8),
  ('I Know I Know', 117, 8),
  ('He\'s Walking Away', 159, 9),
  ('He\'s Trouble', 138, 9),
  ('I Heard I Want To Bo Alone', 120, 9),
  ('I Ride Alone', 151, 9),
  ('Honey', 79, 10),
  ('You Cheated On Me', 95, 10),
  ('Wouldn\'t It Be Nice', 213, 10),
  ('Baby', 136, 10),
  ('You Make Me Feel So..', 83, 10);
  
INSERT INTO SpotifyClone.acessos (data_reproducao, usuario_id)
VALUES
  ('2020-02-28 10:45:55', 1),
  ('2020-05-02 05:30:35', 1),
  ('2020-03-06 11:22:33', 1),
  ('2020-08-05 08:05:17', 1),
  ('2020-09-14 16:32:22', 1),
  ('2020-01-02 07:40:33', 2),
  ('2020-05-16 06:16:22', 2),
  ('2020-10-09 12:27:48', 2),
  ('2020-09-21 13:14:46', 2),
  ('2020-11-13 16:55:13', 3),
  ('2020-12-05 18:38:30', 3),
  ('2020-07-30 10:00:00', 3),
  ('2021-08-15 17:10:10', 4),
  ('2021-07-10 15:20:30', 4),
  ('2021-01-09 01:44:33', 4),
  ('2020-07-03 19:33:28', 5),
  ('2017-02-24 21:14:22', 5),
  ('2020-08-06 15:23:43', 5),
  ('2020-11-10 13:52:27', 5),
  ('2019-02-07 20:33:48', 6),
  ('2017-01-24 00:31:17', 6),
  ('2017-10-12 12:35:20', 6),
  ('2018-05-29 14:56:41', 6),
  ('2018-05-09 22:30:49', 7),
  ('2020-07-27 12:52:58', 7),
  ('2018-01-16 18:40:43', 7),
  ('2018-03-21 16:56:40', 8),
  ('2020-10-18 13:38:05', 8),
  ('2019-05-25 08:14:03', 8),
  ('2021-08-15 21:37:09', 8),
  ('2021-05-24 17:23:45', 9),
  ('2018-12-07 22:48:52', 9),
  ('2021-03-14 06:14:26', 9),
  ('2020-04-01 03:36:00', 9),
  ('2017-02-06 08:21:34', 10),
  ('2017-12-04 05:33:43', 10),
  ('2017-07-27 05:24:49', 10),
  ('2017-12-25 01:03:57', 10);
