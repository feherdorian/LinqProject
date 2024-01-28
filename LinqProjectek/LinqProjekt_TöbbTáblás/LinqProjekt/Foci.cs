using System;
using System.Collections.Generic;
using System.IO;

namespace LinqProjekt
{
    internal class Foci
    {
        private string jatekosokFajl;
        private string csapatokFajl;
        List<Csapat> csapatok = new List<Csapat>();
        List<Jatekos> jatekosok = new List<Jatekos>();

        public Foci(string jatekosokFajl, string csapatokFajl)
        {
            this.jatekosokFajl = jatekosokFajl;
            this.csapatokFajl = csapatokFajl;
            Beovlas();
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
                int fizetes = int.Parse((oszlopok[4]));
                jatekosok.Add(new Jatekos(jatekosNev, csapatId, pozicio, nemzetiseg, fizetes));
            }
            for (int i = 1; i < csapatSorok.Length; i++)
            {
                string[] oszlopok = csapatSorok[i].Split(';');
                string csapatNev = oszlopok[0];
                string menedzser = oszlopok[1]; 
                string orszag = oszlopok[2];
                csapatok.Add(new Csapat(csapatNev, menedzser, orszag));
            }
        }
    }
}