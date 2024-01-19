## Beolvas
- Első lépésként beolvassuk az összes sort a megadott fájlból (fajl változóval megadva) és azokat egy string tömbbe helyezzük (sorok).

- for (int i = 1; i < sorok.Length; i++): Ez egy ciklus, amely végigiterál a sorok tömbön, kezdve a második sorról (azaz az index 1-től), mivel az első sort (index 0) gyakran fejlécként használják.

- A cikluson belül minden sort felosztunk a ; karakter alapján, és az így kapott részeket egy újabb string tömbbe tesszük (oszlopok).

- A következő sorokban a különböző részekből kinyert adatokat változókba mentjük. Például nev, osztaly, szulev, osztondij, atlag, neme változókba mentjük a megfelelő oszlopok adatait.

- tanulok.Add(new Tanulo(nev, osztaly, szulev, osztondij, atlag, neme));: Végül létrehozunk egy új Tanulo objektumot a kinyert adatokkal, majd ezt hozzáadjuk egy előre definiált lista (tanulok) elemei közé.

- Végül feltöltjük adatokkal a tanulókról a tanulok listában. 