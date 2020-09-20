using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAtravels
{
    public partial class Promociones_esp : System.Web.UI.Page
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Honduras45-esp.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("costarica70-esp.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Honduras45-esp.aspx");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("costarica70-esp.aspx");
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Nicaragua60-esp.aspx");
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