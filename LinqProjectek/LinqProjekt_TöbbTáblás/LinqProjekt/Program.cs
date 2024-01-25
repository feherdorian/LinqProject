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

            Console.WriteLine("\n2. 20 vagy több bajnoki címmel rendelkező csapatok");
            b.SokCimesek();

            Console.WriteLine("3. Országonként hány csapat van");
            b.OrszagonkentCsapatok();

            Console.ReadLine();
        }
    }
}
