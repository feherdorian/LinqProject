using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinqProjekt
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string jatekosokFajl = "jatekosok.csv";
            string csapatokFajl = "csapatok.csv";

            Foci f = new Foci(jatekosokFajl, csapatokFajl);

            /* 1. Feladat */
            /* Sorolja fel, milyen pozíciók vannak az adatbázisban, és az adott pozíciókon hány játékos található */
            f.PozicioCsoportositasa();
            Console.WriteLine();

            /* 2. Feladat */
            /* Számolja ki az összes játékos fizetésének átlagát */
            f.FieztesAtlag();
            Console.WriteLine();

            /* 3. Feladat */
            /* Írja ki, hogy melyik játékos melyik csapathoz tartozik */
            f.HovaTartozik();
            Console.WriteLine();

            /* 4. Feladat */
            /* */
            f.Csportositas();
            Console.WriteLine();

            /* 5. Feladat */
            /* Sorolja fel az összes 'kapus' pozícióban szereplő játékost az adatbázisból! (Minden oszlop jelenjen meg) => Játékos neve, Csapat neve (id alapján), pozíció, nemzetiség, fizetés */
            f.Felsorolas();
            Console.WriteLine();


            Console.ReadLine();
        }
    }
}
