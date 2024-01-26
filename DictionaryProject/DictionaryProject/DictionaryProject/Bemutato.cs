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
            //var lek = from cs in csapatok
            //          group cs by csapatok into csop
            //          select new
            //          {
            //              Orszag = csop.Key,
            //              Atlag = csop.Average(Value.);
            //          };

            //var lek = csapatok
            //    .GroupBy(cs => cs.Value.Item4)
            //    .Select(csipicsapat => new
            //    {
            //        Orszag = csipicsapat.Key,
            //        Atlag = csipicsapat.Average()
            //    });

            foreach (var sor in lek)
            {
                Console.WriteLine("\n- {0}: {1}", sor.Orszag, sor.Atlag);
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