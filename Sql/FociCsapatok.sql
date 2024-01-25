CREATE DATABASE Csapatok
  CHARACTER SET utf8
  COLLATE utf8_hungarian_ci;

USE Csapatok;

CREATE TABLE csapatok (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  csapat VARCHAR(255) NOT NULL,
  bajnokiCim INT(11) NOT NULL,
  menedzser VARCHAR(255) NOT NULL,
  orszag VARCHAR(255) NOT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

DELETE FROM csapatok;

INSERT INTO csapatok
  (csapat, bajnokiCim, menedzser, orszag)
VALUES
  ('RealMadrid', 35, 'Ancelotti', 'Spanyolország'),
  ('Barcelona', 27, 'Xavi', 'Spanyolország'),
  ('ManchesterUnited', 20, 'tenHag', 'Anglia'),
  ('LeicesterCity', 1, 'Marescra', 'Anglia'),
  ('Ferencváros', 34, 'Stankovic', 'Magyarország'),
  ('AtleticoMadrid', 11, 'Simeone', 'Spanyolország'),
  ('Videoton', 3, 'Grzelak', 'Magyarország'),
  ('Arsenal', 13, 'Arteta', 'Anglia'),
  ('Sevilla', 1, 'Flores', 'Spanyolország'),
  ('PSG', 11, 'Enrique', 'Franciaország');

SELECT * FROM csapatok;

#lekérdezések

# 1. Csapatok névsorba
  SELECT *from csapatok
    order by  csapat;

# 2. 20 vagy több bajnoki címmel rendelkezõ csapatok
  SELECT id, csapat, bajnokiCim from csapatok
    where bajnokiCim > 20;

# 3. országonként hány csapat van
select id, orszag ,Count(*) Letszam  from csapatok
  group by orszag;
