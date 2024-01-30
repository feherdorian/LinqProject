using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace LinqProjekt
{
    internal class Foci
    {
        private string jatekosokFajl;
        private string csapatokFajl;
        List<Csapat> csapatokLista = new List<Csapat>();
        List<Jatekos> jatekosokLista = new List<Jatekos>();

        public Foci(string jatekosokFajl, string csapatokFajl)
        {
            this.jatekosokFajl = jatekosokFajl;
            this.csapatokFajl = csapatokFajl;
            Beovlas();
        }


        internal void FieztesAtlag()
        {
            Console.WriteLine("Focisták fizetésének átlaga: {0} mFt", jatekosokLista.Average(j => j.fizetes));
        }

        internal void PozicioCsoportositasa()
        {
            var lekerdezes = jatekosokLista.GroupBy(j => j.pozicio);
            foreach (var sor in lekerdezes)
            {
                Console.WriteLine("{0}: {1}", sor.Key, sor.Count());
            }
        }

        private void Beovlas()
        {
            string[] jatekosSorok = File.ReadAllLines(jatekosokFajl);
            string[] csapatSorok = File.ReadAllLines(csapatokFajl);
            for (int i = 1; i < jatekosSorok.Length; i++)
            {
                string[] oszlopok = jatekosSorok[i].Split(';');
                string jatekosNev = oszlopok[0];
                int csapatId = int.Parse(oszlopok[1]);
                string pozicio = oszlopok[2];
                string nemzetiseg = oszlopok[3];
                double fizetes = double.Parse(oszlopok[4]);
                jatekosokLista.Add(new Jatekos(jatekosNev, csapatId, pozicio, nemzetiseg, fizetes));
            }
            for (int i = 1; i < csapatSorok.Length; i++)
            {
                string[] oszlopok = csapatSorok[i].Split(';');
                string csapatNev = oszlopok[0];
                string menedzser = oszlopok[1]; 
                string orszag = oszlopok[2];
                csapatokLista.Add(new Csapat(csapatNev, menedzser, orszag));
            }
        }
    }
}