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

            Console.WriteLine("\nMilyen osztályaink vannak: ");
            b.Osztályaink();

            Console.WriteLine("\nA legjobb átlagú tanuló neve");
            b.LegjobbÁtlagúTanulóNeve();

            Console.WriteLine("\nP betűvel kezdődő nevek:");
            string betű = "p";
            b.AdottKedoBetu(betű);


            Console.ReadLine();
        }
    }
}
