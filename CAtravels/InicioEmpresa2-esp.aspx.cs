using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAtravels
{
    public partial class InicioEmpresa2_esp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa2-esp.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa-esp.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Txtvempresa.Text.Trim() != "" && Txtvsalida.Text.Trim() != "" && Txtvllegada.Text != "" && TxtSalida.Text != "" && Txtllegada.Text != "" && Txtprecio.Text != "" && Txtmoneda.Text != "" && Txttelefono.Text != "" && Txtemail.Text.Trim() != "")
            {

                string VEname, Psalida, Pdestino, regreso,salida, Preciovuelo, Moneda, EVempresa;
                int Telefono;
                //DateTime salida = Convert.ToDateTime(TxtSalida.Text);

                VEname = Txtvempresa.Text;
                Psalida = Txtvsalida.Text;
                Pdestino = Txtvllegada.Text;
                salida = TxtSalida.Text;
                regreso = Txtllegada.Text;
                Preciovuelo = Txtprecio.Text;
                Moneda = Txtmoneda.Text;
                Telefono = Convert.ToInt32(Txttelefono.Text);
                EVempresa = Txtemail.Text;


                ConexiónV.AgregarVempresaesp(VEname, Psalida, Pdestino, salida, regreso, Preciovuelo, Moneda, Telefono, EVempresa);
                {
                    alerta.Text = "<script>Swal.fire('Se agrego de una manera exitosa', 'Bienvenido', 'success'); </script>";

                    Txtvempresa.Text = "";
                    Txtvsalida.Text = "";
                    Txtvllegada.Text = "";
                    TxtSalida.Text = "";
                    Txtllegada.Text = "";
                    Txtprecio.Text = "";
                    Txtmoneda.Text = "";
                    Txttelefono.Text = "";
                    Txtemail.Text = "";

                }
               

            }
            else
            {
                alerta.Text = "<script>Swal.fire('compañia no registrada', 'No deje campos vacíos', 'error'); </script>";
            }
        }

        protected void LBedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarEmpresaVuelos-esp.aspx");
        }

        protected void LBdelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarEmpresa-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login-esp.aspx");
        }
    }
}
