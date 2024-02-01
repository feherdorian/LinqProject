INSERT INTO csapatok
( csapatNev, menendzser, orszag)
  VALUES
  ('Real Madrid', 'Carlo Ancelotti','Spanyolorsz�g'),
  ('Manchester City', 'Pep Guardiola','Anglia'),
  ('Bayern M�nchen ', 'Julian Nagelsmann','N�metorsz�g'),
  ('Paris Saint-Germain', 'Mauricio Pochettino','Franciaorsz�g'),
  ('Liverpool', 'J�rgen Klopp','Anglia'),
  ('FC Barcelona', 'Xavi Hernandez','Spanyolorsz�g'),
  ('Juventus', 'Massimiliano Allegri','Olaszorsz�g'),
  ('Manchester United', 'Ralf Rangnick','Anglia'),
  ('Chelsea', 'Thomas Tuchel','Anglia'),
  ('Borussia Dortmund', 'Marco Rose','N�metorsz�g'),
  ('Inter Milan', 'Simone Inzaghi','Olaszorsz�g'),
  ('Atletico Madrid', 'Diego Simeone','Spanyolorsz�g'),
  ('AC Milan', 'Stefano Pioli','Olaszorsz�g'),
  ('Arsenal', 'Mikel Arteta','Anglia'),
  ('Ajax', 'Erik ten Hag','Hollandia'),
  ('RB Leipzig', 'Jesse Marsch','N�metorsz�g'),
  ('Sevilla FC', 'Julen Lopetegui','Spanyolorsz�g'),
  ('Napoli', 'Luciano Spalletti','Olaszorsz�g'),
  ('Tottenham Hotspur', 'Antonio Conte','Anglia'),
  ('AS Roma', 'Jose Mourinho','Olaszorsz�g');

SELECT * FROM csapatok;

INSERT INTO jatekosok 
  (jatekosNev, csapatId, pozicio, nemzetiseg, fizetes)
  VALUES
  ('Karim Benzema', 1, 'Csat�r', 'Francia', 500),
  ('Luka Modri�', 1, 'K�z�pp�ly�s', 'Horv�t', 200),
  ('Vin�cius J�nior', 1, 'Sz�ls�', 'Brazil', 250),
  ('Kevin De Bruyne', 2, 'K�z�pp�ly�s', 'Belga', 525),
  ('Raheem Sterling', 2, 'Sz�ls�', 'Angol', 177),
  ('Ruben Dias', 2, 'V�d� ', 'Portug�l', 200.1),
  ('Robert Lewandowski', 3, 'Csat�r', 'Lengyel', 370),
  ('Joshua Kimmich', 3, 'K�z�pp�ly�s', 'N�met', 102),
  ('Manuel Neuer', 3, 'Kapus', 'N�met', 155),
  ('Kylian Mbapp�', 4, 'Csat�r', 'Francia', 126.5),
  ('Neymar Jr', 4, 'Sz�ls�', 'Brazil', 222.2),
  ('Marco Verratt', 4, 'K�z�pp�ly�s', 'Olasz', 103),
  ('Mohamed Salah', 5, 'Sz�ls�', 'Egyiptomi', 199),
  ('Virgil van Dijk', 5, 'V�d�', 'Holland', 188),
  ('Sadio Man�', 5, 'Sz�ls�', 'Szeneg�li', 100.3),
  ('Lionel Messi', 6, 'Sz�ls�', 'Argentin', 0.1),
  ('Frenkie de Jong', 6, 'K�z�pp�ly�s', 'Holland', 112),
  ('Ansu Fati', 6, 'Sz�ls�', 'Spanyol', 211),
  ('Cristiano Ronaldo', 7, 'Csat�r', 'Portug�l', 900),
  ('Paulo Dybala', 7, 'T�mad� k�z�pp�ly�s', 'Argentin', 214),
  ('De Ligt', 7, 'V�d�', 'Holland', 367),
  ('Bruno Fernandes', 8, 'K�z�pp�ly�s', 'Portug�l', 498),
  ('Marcus Rashford', 8, 'Sz�ls�', 'Angol', 513),
  ('Harry Maguire', 8, 'V�d�', 'Angol', 655),
  ('N Golo Kant�', 9, 'K�z�pp�ly�s', 'Francia', 767),
  ('Mason Mount', 9, 'K�z�pp�ly�s', 'Angol', 868),
  ('Romelu Lukaku', 9, 'Csat�r', 'Belgiumi', 978),
  ('Erling Haaland', 10, 'Csat�r', 'Norv�g', 102),
  ('Jadon Sancho', 10, 'Sz�ls�', 'Angol', 110),
  ('Marco Reus', 10, 'T�mad� k�z�pp�ly�s', 'N�met', 113),
  ('Lautaro Mart�nez', 11, 'Csat�r', 'Argent�n', 116),
  ('Milan �kriniar', 11, 'V�d�', 'Szlov�k', 117),
  ('Nicolo Barella', 11, 'K�z�pp�ly�s', 'Olasz', 198),
  ('Joao F�lix', 12, 'Sz�ls�', 'Portug�l', 191),
  ('Luis Su�rez', 12, 'Csat�r', 'Uruguayi', 146),
  ('Koke', 12, 'K�z�pp�ly�s', 'Spanyol', 157),
  ('Zlatan Ibrahimovi�', 13, 'Csat�r', 'Sv�d', 145),
  ('Theo Hern�ndez', 13, 'Balh�tv�d', 'Francia', 121),
  ('Franck Kessi�', 13, 'K�z�pp�ly�s', 'Elef�ntcsontparti', 157),
  ('Bukayo Saka', 14, 'Sz�ls�', 'Angol', 126),
  ('Pierre-Emerick Aubameyang', 14, 'Csat�r', 'Gaboni', 116),
  ('Thomas Partey', 14, 'K�z�pp�ly�s', 'Gh�nai', 178),
  ('Dusan Tadi�', 15, 'T�mad� k�z�pp�ly�s', 'Szerb', 187),
  ('Ryan Gravenberch', 15, 'K�z�pp�ly�s', 'Holland', 167),
  ('Antony', 15, 'Sz�ls�', 'Brazil', 188),
  ('Christopher Nkunku', 16, 'T�mad� k�z�pp�ly�s', 'Francia', 123),
  ('Yussuf Poulsen', 16, 'Csat�r', 'D�n', 167),
  ('Marcel Sabitzer', 16, 'K�z�pp�ly�s', 'Ausztriai', 187),
  ('Youssef En-Nesyri', 17, 'Csat�r', 'Marokk�i', 166),
  ('Jes�s Navas', 17, 'Sz�ls�', 'Spanyol', 188),
  ('Jules Kound�', 17, 'V�d� ', 'Francia', 189),
  ('Lorenzo Insigne', 18, 'Sz�ls� ', 'Olasz', 134),
  ('Victor Osimhen', 18, 'Csat�r', 'Nigeri', 164),
  ('Kalidou Koulibaly', 18, 'V�d�', 'Szeneg�li', 124),
  ('Harry Kane', 19, 'Csat�r', 'Angol', 155),
  ('Son Heung-min', 19, 'Sz�ls�', 'D�l-koreai', 156),
  ('Pierre-Emile Hojbjerg', 19, 'K�z�pp�ly�s', 'D�n', 112),
  ('Jordan Veretout', 20, 'K�z�pp�ly�s', 'Francia', 145),
  ('Tammy Abraham', 20, 'Csat�r', 'Angol', 165),
  ('Leonardo Spinazzola', 20, 'Balh�tv�d', 'Olasz', 132);

delete  from jatekosok;
SELECT * FROM jatekosok;


SELECT csapatok.csapatNev, jatekosok.jatekosNev, jatekosok.pozicio
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
ORDER BY csapatok.csapatNev, jatekosok.jatekosNev;


SELECT jatekosok.jatekosNev, csapatok.csapatNev, jatekosok.pozicio, jatekosok.nemzetiseg, jatekosok.fizetes
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
WHERE jatekosok.pozicio = 'Csat�r';





