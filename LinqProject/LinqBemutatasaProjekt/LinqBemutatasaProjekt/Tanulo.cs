namespace LinqBemutatasaProjekt
{
    internal class Tanulo
    {
        public string nev;
        public string osztaly;
        public int szulev;
        public int osztondij;
        public double atlag;
        public string neme;

        public Tanulo(string nev, string osztaly, int szulev, int osztondij, double atlag, string neme)
        {
            this.nev = nev;
            this.osztaly = osztaly;
            this.szulev = szulev;
            this.osztondij = osztondij;
            this.atlag = atlag;
            this.neme = neme;
        }
    }
}