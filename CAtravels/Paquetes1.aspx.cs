using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAtravels
{
    public partial class Paquetes1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void LBMantigua_Click(object sender, EventArgs e)
        {
            Response.Redirect("AntiguaGuatemala.aspx");
            //Response.Redirect("ElSalvadorp.aspx");
        }

        protected void LBMsivar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ElSalvadorp.aspx");
        }

        protected void LBMpanama_Click(object sender, EventArgs e)
        {
            Response.Redirect("Panamap.aspx");
        }

        protected void LBMhonduras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hondurasp.aspx");
        }

        protected void LBMcosta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Costaricap.aspx");
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