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
    }
}