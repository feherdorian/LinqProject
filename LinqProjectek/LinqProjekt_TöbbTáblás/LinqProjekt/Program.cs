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

            /* 2. Feladat */
            /* Számolja ki az összes játékos fizetésének átlagát */
            f.FieztesAtlag();




            Console.ReadLine();
        }
    }
}
