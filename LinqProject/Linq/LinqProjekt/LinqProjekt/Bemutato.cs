using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace LinqProjekt
{
    internal class Bemutato
    {
        private string fajl;
        List<Csapat> csapatok = new List<Csapat>();

        public Bemutato(string fajl)
        {
            this.fajl = fajl;
            Beolvas();
        }


        private void Beolvas()
        {
            string[] sorok = File.ReadAllLines(fajl);
            for (int i = 1; i < sorok.Length; i++)
            {
                string[] oszlopok = sorok[i].Split(';');
                int id = int.Parse(oszlopok[0]);
                string csapat = oszlopok[1];
                int bajnokiCim = int.Parse(oszlopok[2]);
                string menedzser = oszlopok[3];
                string orszag = oszlopok[4];
                csapatok.Add(new Csapat(id, csapat, bajnokiCim, menedzser, orszag));
            }
        }

        internal void Nevsor()
        {
            //var lek = from csapat in csapatok
            //          orderby csapat.csapat
            //          select csapat;


            //lamda
            var lek = csapatok.OrderBy(cs => cs.csapat);

            foreach (var sor in lek)
            {
                Console.WriteLine("\t- {0}", sor.csapat);
            }
        }

        internal void SokCimesek()
        {
            var lek = from csapat in csapatok
                      where csapat.bajnokiCim > 20 
                      select csapat;

            //lamda
            //var lek = csapatok.Where(cs => cs.bajnokiCim > 20);


            foreach (var sor in lek)
            { Console.WriteLine("\t-{0}: {1}", sor.csapat, sor.bajnokiCim);}
        }
    }
}