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
            string fajl = "focicsapat.txt";
            Bemutato b = new Bemutato(fajl);

            Console.WriteLine("1. Csapatok névsorban");
            b.Nevsor();

            Console.WriteLine("\n20 vagy több bajnoki címmel rendelkező csapatok");
            b.SokCimesek();

            Console.ReadLine();
        }
    }
}
