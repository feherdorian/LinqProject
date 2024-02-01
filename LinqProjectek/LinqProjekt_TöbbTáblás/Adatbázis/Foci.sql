INSERT INTO csapatok
( csapatNev, menendzser, orszag)
  VALUES
  ('Real Madrid', 'Carlo Ancelotti','Spanyolország'),
  ('Manchester City', 'Pep Guardiola','Anglia'),
  ('Bayern München ', 'Julian Nagelsmann','Németország'),
  ('Paris Saint-Germain', 'Mauricio Pochettino','Franciaország'),
  ('Liverpool', 'Jürgen Klopp','Anglia'),
  ('FC Barcelona', 'Xavi Hernandez','Spanyolország'),
  ('Juventus', 'Massimiliano Allegri','Olaszország'),
  ('Manchester United', 'Ralf Rangnick','Anglia'),
  ('Chelsea', 'Thomas Tuchel','Anglia'),
  ('Borussia Dortmund', 'Marco Rose','Németország'),
  ('Inter Milan', 'Simone Inzaghi','Olaszország'),
  ('Atletico Madrid', 'Diego Simeone','Spanyolország'),
  ('AC Milan', 'Stefano Pioli','Olaszország'),
  ('Arsenal', 'Mikel Arteta','Anglia'),
  ('Ajax', 'Erik ten Hag','Hollandia'),
  ('RB Leipzig', 'Jesse Marsch','Németország'),
  ('Sevilla FC', 'Julen Lopetegui','Spanyolország'),
  ('Napoli', 'Luciano Spalletti','Olaszország'),
  ('Tottenham Hotspur', 'Antonio Conte','Anglia'),
  ('AS Roma', 'Jose Mourinho','Olaszország');

SELECT * FROM csapatok;

INSERT INTO jatekosok 
  (jatekosNev, csapatId, pozicio, nemzetiseg, fizetes)
  VALUES
  ('Karim Benzema', 1, 'Csatár', 'Francia', 500),
  ('Luka Modriæ', 1, 'Középpályás', 'Horvát', 200),
  ('Vinícius Júnior', 1, 'Szélsõ', 'Brazil', 250),
  ('Kevin De Bruyne', 2, 'Középpályás', 'Belga', 525),
  ('Raheem Sterling', 2, 'Szélsõ', 'Angol', 177),
  ('Ruben Dias', 2, 'Védõ ', 'Portugál', 200.1),
  ('Robert Lewandowski', 3, 'Csatár', 'Lengyel', 370),
  ('Joshua Kimmich', 3, 'Középpályás', 'Német', 102),
  ('Manuel Neuer', 3, 'Kapus', 'Német', 155),
  ('Kylian Mbappé', 4, 'Csatár', 'Francia', 126.5),
  ('Neymar Jr', 4, 'Szélsõ', 'Brazil', 222.2),
  ('Marco Verratt', 4, 'Középpályás', 'Olasz', 103),
  ('Mohamed Salah', 5, 'Szélsõ', 'Egyiptomi', 199),
  ('Virgil van Dijk', 5, 'Védõ', 'Holland', 188),
  ('Sadio Mané', 5, 'Szélsõ', 'Szenegáli', 100.3),
  ('Lionel Messi', 6, 'Szélsõ', 'Argentin', 0.1),
  ('Frenkie de Jong', 6, 'Középpályás', 'Holland', 112),
  ('Ansu Fati', 6, 'Szélsõ', 'Spanyol', 211),
  ('Cristiano Ronaldo', 7, 'Csatár', 'Portugál', 900),
  ('Paulo Dybala', 7, 'Támadó középpályás', 'Argentin', 214),
  ('De Ligt', 7, 'Védõ', 'Holland', 367),
  ('Bruno Fernandes', 8, 'Középpályás', 'Portugál', 498),
  ('Marcus Rashford', 8, 'Szélsõ', 'Angol', 513),
  ('Harry Maguire', 8, 'Védõ', 'Angol', 655),
  ('N Golo Kanté', 9, 'Középpályás', 'Francia', 767),
  ('Mason Mount', 9, 'Középpályás', 'Angol', 868),
  ('Romelu Lukaku', 9, 'Csatár', 'Belgiumi', 978),
  ('Erling Haaland', 10, 'Csatár', 'Norvég', 102),
  ('Jadon Sancho', 10, 'Szélsõ', 'Angol', 110),
  ('Marco Reus', 10, 'Támadó középpályás', 'Német', 113),
  ('Lautaro Martínez', 11, 'Csatár', 'Argentín', 116),
  ('Milan Škriniar', 11, 'Védõ', 'Szlovák', 117),
  ('Nicolo Barella', 11, 'Középpályás', 'Olasz', 198),
  ('Joao Félix', 12, 'Szélsõ', 'Portugál', 191),
  ('Luis Suárez', 12, 'Csatár', 'Uruguayi', 146),
  ('Koke', 12, 'Középpályás', 'Spanyol', 157),
  ('Zlatan Ibrahimoviæ', 13, 'Csatár', 'Svéd', 145),
  ('Theo Hernández', 13, 'Balhátvéd', 'Francia', 121),
  ('Franck Kessié', 13, 'Középpályás', 'Elefántcsontparti', 157),
  ('Bukayo Saka', 14, 'Szélsõ', 'Angol', 126),
  ('Pierre-Emerick Aubameyang', 14, 'Csatár', 'Gaboni', 116),
  ('Thomas Partey', 14, 'Középpályás', 'Ghánai', 178),
  ('Dusan Tadiæ', 15, 'Támadó középpályás', 'Szerb', 187),
  ('Ryan Gravenberch', 15, 'Középpályás', 'Holland', 167),
  ('Antony', 15, 'Szélsõ', 'Brazil', 188),
  ('Christopher Nkunku', 16, 'Támadó középpályás', 'Francia', 123),
  ('Yussuf Poulsen', 16, 'Csatár', 'Dán', 167),
  ('Marcel Sabitzer', 16, 'Középpályás', 'Ausztriai', 187),
  ('Youssef En-Nesyri', 17, 'Csatár', 'Marokkói', 166),
  ('Jesús Navas', 17, 'Szélsõ', 'Spanyol', 188),
  ('Jules Koundé', 17, 'Védõ ', 'Francia', 189),
  ('Lorenzo Insigne', 18, 'Szélsõ ', 'Olasz', 134),
  ('Victor Osimhen', 18, 'Csatár', 'Nigeri', 164),
  ('Kalidou Koulibaly', 18, 'Védõ', 'Szenegáli', 124),
  ('Harry Kane', 19, 'Csatár', 'Angol', 155),
  ('Son Heung-min', 19, 'Szélsõ', 'Dél-koreai', 156),
  ('Pierre-Emile Hojbjerg', 19, 'Középpályás', 'Dán', 112),
  ('Jordan Veretout', 20, 'Középpályás', 'Francia', 145),
  ('Tammy Abraham', 20, 'Csatár', 'Angol', 165),
  ('Leonardo Spinazzola', 20, 'Balhátvéd', 'Olasz', 132);

delete  from jatekosok;
SELECT * FROM jatekosok;


SELECT csapatok.csapatNev, jatekosok.jatekosNev, jatekosok.pozicio
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
ORDER BY csapatok.csapatNev, jatekosok.jatekosNev;


SELECT jatekosok.jatekosNev, csapatok.csapatNev, jatekosok.pozicio, jatekosok.nemzetiseg, jatekosok.fizetes
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
WHERE jatekosok.pozicio = 'Csatár';





