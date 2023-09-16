using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class _default : System.Web.UI.Page
    {
        public static List<Prodotto> Prodotti = new List<Prodotto>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Prodotti.Clear();
            if (!IsPostBack)
            {
                Prodotto prodotto1 = new Prodotto(1, "Roventa", "Roventa per chi non si accontenta",
                               "Aspira tutto anche le mattonelle, quindi occhio vivo perchè non diamo risarcimenti.",
                               130, "./Content/assets/aspira1.jpeg");
                Prodotto prodotto2 = new Prodotto(2, "Dyson", "Il tornado delle aspira polveri",
                   "Facciamo anche asciugacapelli forti come la nostra aspirapolvere, altro che gnomi e folletti", 450, "./Content/assets/aspira2.jpeg");
                Prodotto prodotto3 = new Prodotto(3, "Folletto", "Per chi crede nei mondi incantati",
                    "Bassa, verde, nemica degli gnomi e degli elfi.", 800, "./Content/assets/aspira3.jpeg");
                Prodotto prodotto4 = new Prodotto(4, "Marca cavallo", "Non compratela fa schifo.","Inutile che provate ad aspirare la polvere ne crea di più di quanta ne sta già", 2, "./Content/assets/aspira4.jpeg");
                
               
                Prodotti.Add(prodotto1);
                Prodotti.Add(prodotto2);
                Prodotti.Add(prodotto3);
                Prodotti.Add(prodotto4);
 

                Repeater1.DataSource = Prodotti;
                Repeater1.DataBind();
            }
        }
    }
}