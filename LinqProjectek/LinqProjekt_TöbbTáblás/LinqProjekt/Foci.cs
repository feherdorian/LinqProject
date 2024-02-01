using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;

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

        internal void Felsorolas()
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


        internal void FieztesAtlag()
        {
            Console.WriteLine("Focisták fizetésének átlaga: {0} mFt", jatekosokLista.Average(j => j.fizetes));
        }

        internal void HovaTartozik()
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
                int Id = int.Parse(oszlopok[0]);
                string csapatNev = oszlopok[1];
                string menedzser = oszlopok[2]; 
                string orszag = oszlopok[3];
                csapatokLista.Add(new Csapat(Id, csapatNev, menedzser, orszag));
            }
        }
    }
}