 ## 1.Csoportosítás
 ## Linq
 ```
        internal void Csportositas()
        {
            var lekerdezes = jatekosokLista
        .Join(csapatokLista,
              jatekos => jatekos.csapatId,
              csapat => csapat.Id,
              (jatekos, csapat) => new { Jatekos = jatekos, Csapat = csapat })
        .GroupBy(kapcsolt => kapcsolt.Csapat.csapatNev);
            foreach (var csapatCsoport in lekerdezes)
    {
        Console.WriteLine("{0} csapat játékosai:", csapatCsoport.Key);

        foreach (var kapcsolt in csapatCsoport)
        {
            Console.WriteLine($" - Játékos neve: {kapcsolt.Jatekos.jatekosNev}, Pozíció: {kapcsolt.Jatekos.pozicio}");
        }
    }
}
```
## Sql
```SELECT csapatok.csapatNev, jatekosok.jatekosNev, jatekosok.pozicio
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
ORDER BY csapatok.csapatNev, jatekosok.jatekosNev;
```


## 2. Játákosok felsorolása
## Linq
```internal void Felsorolas()
{
    string poz = "Csatár";
    var lekerdezes = from jatekos in jatekosokLista
                     join csapat in csapatokLista
                     on jatekos.csapatId equals csapat.Id
                     where jatekos.pozicio == poz
                     select new
                     {
                         JatekosNev = jatekos.jatekosNev,
                         CsapatNev = csapat.csapatNev,
                         Pozicio = jatekos.pozicio,
                         Nemzetiseg = jatekos.nemzetiseg,
                         Fizetes = jatekos.fizetes
                     };

    Console.WriteLine("{0} pozícioban szereplő játékos(ok) adatai:", poz);

    foreach (var item in lekerdezes)
    {
        Console.WriteLine($"Játékos neve: {item.JatekosNev}, Csapat neve: {item.CsapatNev}, Pozíció: {item.Pozicio}, Nemzetiség: {item.Nemzetiseg}, Fizetés: {item.Fizetes}M");
    }
}
```
## Sql
```SELECT jatekosok.jatekosNev, csapatok.csapatNev, jatekosok.pozicio, jatekosok.nemzetiseg, jatekosok.fizetes
FROM jatekosok
JOIN csapatok ON jatekosok.csapatId = csapatok.Id
WHERE jatekosok.pozicio = 'Csatár';
```

## 3. Játékosoknak fizetés átlaga évente
## Linq
```internal void FieztesAtlag()
{
    Console.WriteLine("Focisták fizetésének átlaga: {0} mFt", jatekosokLista.Average(j => j.fizetes));
}
```
## Sql
```SELECT AVG(fizetes) AS FizetesAtlaga
FROM jatekosok;
```

## 4. Játékosok melyik csapathoz tartoznak
## Linq
``` internal void HovaTartozik()
 {
     var lekerdezes = jatekosokLista.GroupBy(j => j.pozicio);

     foreach (var pozicioCsoport in lekerdezes)
     {
         Console.WriteLine("{0}: {1} játékos", pozicioCsoport.Key, pozicioCsoport.Count());

         foreach (var jatekos in pozicioCsoport)
         {
             Console.WriteLine($" - {jatekos.jatekosNev}");
         }
     }
 }
 ```
 ## Sql
 ```SELECT pozicio, COUNT(*) AS JatekosokSzama
FROM jatekosok
GROUP BY pozicio;
```

 ## 5. Mennyien játszanak egy pozicíóban 
 ## Linq
 ```internal void PozicioCsoportositasa()
{
    var lekerdezes = jatekosokLista.GroupBy(j => j.pozicio);
    foreach (var sor in lekerdezes)
    {
        Console.WriteLine("{0}: {1}", sor.Key, sor.Count());
    }
}
```
## Sql
```SELECT pozicio, COUNT(*) AS JatekosokSzama
FROM jatekosok
GROUP BY pozicio;
```
