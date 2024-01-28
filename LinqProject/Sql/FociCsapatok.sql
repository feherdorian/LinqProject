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

SELECT *FROM csapatok;

#lekérdezések

# 1. Csapatok névsorba
  SELECT *from csapatok
    order by  csapat;

# 2. országonként hány csapat van
select id, orszag ,Count(*) L8etszam  from csapatok
  group by orszag;

# 3. 1-3 legtöbb címmel rendelkezõ csapat
  SELECT csapat, bajnokiCim from csapatok
    order BY bajnokiCim DESC
    Limit 3;

# Dictionary

# 1. Országonként átlag bajnoki cím
  SELECT id, orszag, AVG(bajnokiCim) Összeg from csapatok
    group by orszag;

