using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAtravels
{
    public partial class Paquetes1_esp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LBinicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio-esp.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vuelos-esp.aspx");
        }

        protected void LBpromociones_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones-esp.aspx");
        }

        protected void LBpaquetes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Paquetes1-esp.aspx");
        }

        protected void LBMantigua_Click(object sender, EventArgs e)
        {
            Response.Redirect("AntiguaGuatemala-esp.aspx");
            //Response.Redirect("ElSalvadorp.aspx");
        }

        protected void LBMsivar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ElSalvadorp-esp.aspx");
        }

        protected void LBMpanama_Click(object sender, EventArgs e)
        {
            Response.Redirect("Panamap-esp.aspx");
        }

        protected void LBMhonduras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hondurasp-esp.aspx");
        }

        protected void LBMcosta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Costaricap-esp.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}