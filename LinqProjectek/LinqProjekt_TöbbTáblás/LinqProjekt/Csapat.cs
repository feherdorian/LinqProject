namespace LinqProjekt
{
    internal class Csapat
    {
        public string csapatNev;
        public string menedzser;
        public string orszag;

        public Csapat(string csapatNev, string menedzser, string orszag)
        {
            this.csapatNev = csapatNev;
            this.menedzser = menedzser;
            this.orszag = orszag;
        }
    }
}