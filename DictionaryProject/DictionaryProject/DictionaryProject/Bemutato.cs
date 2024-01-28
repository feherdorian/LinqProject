using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace DictionaryProject
{
    internal class Bemutato
    {
        private string fajl;
        Dictionary<int, Tuple<string, int, string, string>> csapatok = new Dictionary<int, Tuple<string, int, string, string>>();

        public Bemutato(string fajl)
        {
            this.fajl = fajl;
            Beolvas();
        }

        internal void AtlagOrszagBCim()
        {
            //var lek = from csapat in csapatok
            //          group csapat by csapat.Value.Item4 into cs
            //          select new
            //          {
            //              Orszag = cs.Key,
            //              Atlag = cs.Average(a => a.Value.Item2)
            //          };

            var lek = csapatok.GroupBy(cs => cs.Value.Item4)
                .Select(csipcsap => new
                {
                    Orszag = csipcsap.Key,
                    Atlag = csipcsap.Average(a => a.Value.Item2)
                });

            foreach (var sor in lek)
            {
                Console.WriteLine("\t- {0}: {1:0.0}", sor.Orszag, sor.Atlag);
            }
        }

        private void Beolvas()
        {
            string[] sor = File.ReadAllLines(fajl);
            for (int i = 1; i < sor.Length; i++)
            {
                string[] oszlopok = sor[i].Split(';');
                int id = int.Parse(oszlopok[0]);
                string csapat = oszlopok[1];
                int bajnokiCim = int.Parse(oszlopok[2]);
                string menedzser = oszlopok[3];
                string orszag = oszlopok[4];
                csapatok[id] = Tuple.Create(csapat, bajnokiCim, menedzser, orszag);
            }
        }
    }
}