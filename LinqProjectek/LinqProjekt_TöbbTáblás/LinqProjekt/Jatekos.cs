namespace LinqProjekt
{
    internal class Jatekos
    {
        public string jatekosNev;
        public int csapatId;
        public string pozicio;
        public string nemzetiseg;
        public int fizetes;

        public Jatekos(string jatekosNev, int csapatId, string pozicio, string nemzetiseg, int fizetes)
        {
            this.jatekosNev = jatekosNev;
            this.csapatId = csapatId;
            this.pozicio = pozicio;
            this.nemzetiseg = nemzetiseg;
            this.fizetes = fizetes;
        }
    }
}