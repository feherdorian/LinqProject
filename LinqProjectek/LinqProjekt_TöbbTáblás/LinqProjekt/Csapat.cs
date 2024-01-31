using System.Data;

namespace LinqProjekt
{
    internal class Csapat
    {
        public int Id;
        public string csapatNev;
        public string menedzser;
        public string orszag;

        public Csapat(int Id, string csapatNev, string menedzser, string orszag)
        {
            this.Id = Id;
            this.csapatNev = csapatNev;
            this.menedzser = menedzser;
            this.orszag = orszag;
        }
    }
}