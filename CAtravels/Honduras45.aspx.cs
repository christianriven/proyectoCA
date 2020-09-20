using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAtravels
{
    public partial class Honduras45 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IBmastercard_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Mastercard.aspx");
        }

        protected void IBvisa_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Visa.aspx");
        }
        protected void LBinicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vuelos.aspx");
        }

        protected void LBpromociones_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones.aspx");
        }

        protected void LBpaquetes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Paquetes1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}