namespace LinqProjekt
{
    internal class Csapat
    {
        public int id;
        public string csapat;
        public int bajnokiCim;
        public string menedzser;
        public string orszag;

        public Csapat(int id, string csapat, int bajnokiCim, string menedzser, string orszag)
        {
            this.id = id;
            this.csapat = csapat;
            this.bajnokiCim = bajnokiCim;
            this.menedzser = menedzser;
            this.orszag = orszag;
        }
    }
}