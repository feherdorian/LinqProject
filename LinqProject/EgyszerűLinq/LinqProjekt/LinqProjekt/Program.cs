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
            string fajl = "csapatok.txt";
            Bemutato b = new Bemutato(fajl);

            Console.WriteLine("1. Csapatok névsorban");
            b.Nevsor();

            Console.WriteLine("\t\n2. Országonként hány csapat van");
            b.OrszagonkentCsapatok();

            Console.WriteLine("\t\n3. Első három legtöbb címmel rendelkező csapat");
            b.Top3();

            Console.ReadLine();
        }
    }
}
