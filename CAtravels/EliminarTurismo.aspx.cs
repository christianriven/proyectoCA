using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace CAtravels
{
    public partial class EliminarTurismo1 : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=catravels; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from empresaeng";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioEmpresa2.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarTurismo.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarTurismo.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = conexionBD.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM empresaeng WHERE Id_empresa=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('It has been selected succesfully', '', 'success'); </script>";

                    TxtEname.Text = registro["Nombre_empresa"].ToString();
                    TxtUempresa.Text = registro["Ubicacion_Empresa"].ToString();
                    Txtprecio.Text = registro["Precio"].ToString();
                    Txtmoneda.Text = registro["Moneda"].ToString();
                    TxtPempresa.Text = registro["Promocion_mes"].ToString();
                    TxtTempresa.Text = registro["Telefono_contacto"].ToString();
                    TxtEempresa.Text = registro["Email_contacto"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went Wrong', 'Verify your ID', 'error') </script>";

            }
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            if (TxtEname.Text.Trim() != "" && TxtUempresa.Text.Trim() != "" && Txtprecio.Text.Trim() != "" && TxtPempresa.Text.Trim() != "" && Txtmoneda.Text.Trim() != "" && TxtTempresa.Text.Trim() != "" && TxtEempresa.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                conexionA.Eliminar2(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from empresaeng";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();



                TxtEname.Text = "";
                TxtUempresa.Text = "";
                Txtprecio.Text = "";
                TxtPempresa.Text = "";
                Txtmoneda.Text = "";
                TxtTempresa.Text = "";
                TxtEempresa.Text = "";
                txtid.Text = "";
                alerta.Text = "<script>Swal.fire('Your register was correctly eliminated', 'Thanks for prefering us!', 'success'); </script>";


            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'Dont leave empty fields', 'error') </script>";
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}