using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.IO;

namespace CAtravels
{
    public partial class InicioEmpresa2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa2.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Txtvempresa.Text.Trim() != "" && Txtvsalida.Text.Trim() != "" && Txtvllegada.Text != "" && TxtSalida.Text != "" && Txtllegada.Text != "" && Txtprecio.Text != "" && Txttelefono.Text != "" && Txtemail.Text.Trim() != "" && Txtmoneda.Text.Trim() != "")
            {

                string VEname, Psalida, Pdestino, regreso, salida, Preciovuelo, EVempresa, Moneda;
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


                ConexiónV.AgregarVempresa(VEname, Psalida, Pdestino, salida, regreso, Preciovuelo, Moneda, Telefono, EVempresa);
                
                    alerta.Text = "<script>Swal.fire('It has been added succesfully', 'welcome', 'success'); </script>";
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
            else
            {
                alerta.Text = "<script>Swal.fire('Company Not Registered', 'This company has already been added', 'error'); </script>";
            }
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarEmpresaVuelos.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarEmpresa.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}
