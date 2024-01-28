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
            string jatekosokFajl = "jatekosok.csv";
            string csapatokFajl = "csapatok.csv";

            Foci f = new Foci(jatekosokFajl, csapatokFajl);

            Console.ReadLine();
        }
    }
}
