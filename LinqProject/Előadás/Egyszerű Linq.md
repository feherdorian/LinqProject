## Beolvas
- Első lépésként beolvassuk az összes sort a megadott fájlból (fajl változóval megadva) és azokat egy string tömbbe helyezzük (sorok).

- for (int i = 1; i < sorok.Length; i++): Ez egy ciklus, amely végigiterál a sorok tömbön, kezdve a második sorról (azaz az index 1-től), mivel az első sort (index 0) gyakran fejlécként használják.

- A cikluson belül minden sort felosztunk a ; karakter alapján, és az így kapott részeket egy újabb string tömbbe tesszük (oszlopok).

- A következő sorokban a különböző részekből kinyert adatokat változókba mentjük. Például nev, osztaly, szulev, osztondij, atlag, neme változókba mentjük a megfelelő oszlopok adatait.

- tanulok.Add(new Tanulo(nev, osztaly, szulev, osztondij, atlag, neme));: Végül létrehozunk egy új Tanulo objektumot a kinyert adatokkal, majd ezt hozzáadjuk egy előre definiált lista (tanulok) elemei közé.

- Végül feltöltjük adatokkal a tanulókról a tanulok listában. 


## Tanulók megszámolása
-Függvény típusa: A internal object azt jelenti, hogy ez a függvény az aktuális névtérben (namespace) belül látható és elérhető, de kívülről nem. A object azt jelenti, hogy a függvény visszatérési értéke egy általános objektum.

-Függvény neve: A függvény neve TanulokSzama. Ez a függvény felelős a tanulók számának visszaadásáért.

-Függvény tartalma: A függvény tartalma egy egyszerű kifejezésből áll. Visszatér a tanulok nevű kollekció (feltételezem, hogy ez egy lista vagy valamilyen gyűjtemény típus) elemeinek számával. A tanulok.Count() kódrészlet a tanulok kollekcióban található elemek számát számolja.

-Ez a függvény tehát egy egyszerű módon visszaadja a tanulok nevű gyűjteményben található elemek számát, és ezt az értéket egy általános objektumként adja vissza. Fontos megjegyezni, hogy ha a tanulok valamilyen specifikus típusú elemeket tartalmaz, akkor érdemes lehet megváltoztatni a függvény visszatérési típusát a konkrét típusra.

## Legjob átlagú kikeresése
- OrderByDescending(tanuló => tanuló.atlag): A tanulok listát csökkenő sorrendben rendezi az átlag alapján.

- Take(1): Az első elemet választja ki a rendezett listából, ami a legmagasabb átlagú tanuló lesz.

- Select(t => (t.nev, t.atlag)): Kiválasztja a kiválasztott tanuló nevét és átlagát, és egy tuple-be helyezi.

- Console.WriteLine("név: átlag"): Kiírja a konzolra a fejlécet.

- foreach (var sor in lekérdezés): Végigiterál a kiválasztott tanulókon.

- Console.WriteLine("{0}: {1}", sor.nev, sor.atlag): Kiírja a tanuló nevét és átlagát a konzolra.