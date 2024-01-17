using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinqBemutatasaProjekt
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string fajl = "bemutato.txt";
            Bemutato b = new Bemutato(fajl);

            Console.WriteLine("Ennyi tanuló van összesen: {0}", b.TanulokSzama());

            Console.ReadLine();
        }
    }
}
