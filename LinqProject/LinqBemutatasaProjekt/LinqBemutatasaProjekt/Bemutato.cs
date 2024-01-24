using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace LinqBemutatasaProjekt
{
    internal class Bemutato
    {
        private string fajl;
        List<Tanulo> tanulok = new List<Tanulo>();

        public Bemutato(string fajl)
        {
            this.fajl = fajl;
            Beolvas();
        }


        internal void Osztályaink()
        {
            var lekérdezés =
                from tanulo in tanulok
                group tanulo by tanulo.osztaly into g 
                orderby g.Key descending
                select new { osztaly = g.Key };

            foreach (var sor in lekérdezés)
            {
                Console.WriteLine("\t{0}",sor.osztaly);
            }

        }

        internal void LegjobbÁtlagúTanulóNeve()
        {
            var lekérdezés = tanulok.
                OrderByDescending(tanuló => tanuló.atlag).
                Take(1).
                Select(t => (t.nev, t.atlag));


            Console.WriteLine("\tnév: átlag");
            foreach (var sor in lekérdezés)
            {
                Console.WriteLine("\t{0}: {1}", sor.nev, sor.atlag);

            }

        }

        internal object TanulokSzama()
        {
            return tanulok.Count();
        }

        private void Beolvas()
        {
            string[] sorok = File.ReadAllLines(fajl);
            for (int i = 1; i < sorok.Length; i++)
            {
                string[] oszlopok = sorok[i].Split(';');
                string nev = oszlopok[0];
                string osztaly = oszlopok[1];
                int szulev = int.Parse(oszlopok[2]);
                int osztondij = int.Parse(oszlopok[3]);
                double atlag = double.Parse(oszlopok[4]);
                string neme = oszlopok[5];
                tanulok.Add(new Tanulo(nev, osztaly, szulev, osztondij, atlag, neme));
            }
        }

        internal void AdottKedoBetu(string betű)
        {
            var lek = tanulok.Where(t => t.nev.Substring(0, 1) == betű).
                OrderBy(t => t.nev);

            foreach (var sor in lek)
            {
                Console.WriteLine("\t{0}",sor.nev);
            }
        }
    }
}