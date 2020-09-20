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
    public partial class inicioEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            if (TxtEname.Text.Trim() != "" && TxtUempresa.Text.Trim() != "" && TxtDempresa.Text != "" && Txtmoneda.Text.Trim() != "" && TxtPempresa.Text != "" && TxtTempresa.Text != "" && TxtEempresa.Text.Trim() != "" )
            {

                string Ename, Uempresa, Dempresa, Moneda, Pempresa, Tempresa, Eempresa;


                Ename = TxtEname.Text;
                Uempresa = TxtUempresa.Text;   
                Dempresa = TxtDempresa.Text;
                Moneda = Txtmoneda.Text;
                Pempresa = TxtPempresa.Text;
                Tempresa = TxtTempresa.Text;
                Eempresa = TxtEempresa.Text;


                conexiónE.AgregarUsuario(Ename, Uempresa, Dempresa, Moneda, Pempresa, Tempresa, Eempresa);

                alerta.Text = "<script>Swal.fire('Successfully Register', 'Welcome', 'success'); </script>";
                TxtEname.Text = "";
                    TxtUempresa.Text = "";                
                    TxtDempresa.Text = "";
                    Txtmoneda.Text = "";
                    TxtPempresa.Text = "";
                    TxtTempresa.Text = "";
                    TxtEempresa.Text = "";

                    
                  
                   
                     
                   
                
          
                
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Company Not Registered', 'Do not leave empty fields', 'error'); </script>";
            }
        }



        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa2.aspx");
        }

        protected void TxtDempresa_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarTurismo.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarTurismo.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}