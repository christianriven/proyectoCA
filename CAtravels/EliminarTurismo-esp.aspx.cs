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
    public partial class EliminarTurismo : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=catravels; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from empresa";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = conexionBD.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM empresa WHERE Id_empresa=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Se ha seleccionado con exito.', '', 'success'); </script>";

                    TxtEname.Text = registro["Nombre_empresa"].ToString();
                    TxtUempresa.Text = registro["Ubicacion_Empresa"].ToString();
                    TxtDempresa.Text = registro["Precio"].ToString();
                    Txtmoneda.Text = registro["Moneda"].ToString();
                    TxtPempresa.Text = registro["Promocion_mes"].ToString();
                    TxtTempresa.Text = registro["Telefono_contacto"].ToString();
                    TxtEempresa.Text = registro["Email_contacto"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            if (TxtEname.Text.Trim() != "" && TxtUempresa.Text.Trim() != "" && TxtDempresa.Text.Trim() != "" && Txtmoneda.Text.Trim() != "" && TxtPempresa.Text.Trim() != "" && TxtTempresa.Text.Trim() != "" && TxtEempresa.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                conexionA.Eliminar2(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from empresa";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();



                TxtEname.Text = "";
                TxtUempresa.Text = "";
                TxtDempresa.Text = "";
                Txtmoneda.Text = "";
                TxtPempresa.Text = "";
                TxtTempresa.Text = "";
                TxtEempresa.Text = "";
                txtid.Text = "";
                alerta.Text = "<script>Swal.fire('Su Registro se ha Eliminado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";


            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioEmpresa2-esp.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa-esp.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarTurismo-esp.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarTurismo-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}