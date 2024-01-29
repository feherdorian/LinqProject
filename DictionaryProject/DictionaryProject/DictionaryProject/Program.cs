using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DictionaryProject
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string fajl = "csapatok.txt";
            Bemutato b = new Bemutato(fajl);

            Console.WriteLine("1. Országokban átlag bajnoki cím");
            b.AtlagOrszagBCim();

            Console.WriteLine("\t2. Adott csapat adatai");
            string Csapat = "RealMadrid";
            b.CsapatKereso(Csapat);

            Console.ReadLine();
        }
    }
}
