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
    public partial class EliminarEmpresa_esp : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=catravels; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from empresavuelos";
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
                MySqlCommand comand = new MySqlCommand("SELECT * FROM empresavuelos WHERE Id_Vempresa=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    Txtvempresa.Text = registro["Nombre_Vempresa"].ToString();
                    Txtvsalida.Text = registro["Pais_Salida"].ToString();
                    Txtvllegada.Text = registro["Pais_llegada"].ToString();
                    TxtSalida.Text = registro["Salida"].ToString();
                    Txtllegada.Text = registro["Regreso"].ToString();
                    Txtprecio.Text = registro["Precio"].ToString();
                    Txtmoneda.Text = registro["Moneda"].ToString();
                    Txttelefono.Text = registro["Telefono"].ToString();
                    Txtemail.Text = registro["Email"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Txtvempresa.Text.Trim() != "" && Txtvsalida.Text.Trim() != "" && Txtvllegada.Text.Trim() != "" && TxtSalida.Text.Trim() != "" && Txtllegada.Text.Trim() != "" && Txtprecio.Text.Trim() != "" && Txtmoneda.Text.Trim() != "" && Txttelefono.Text.Trim() != "" && Txtemail.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                conexionA.Eliminaresp(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from empresavuelos";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();



                Txtvempresa.Text = "";
                Txtvsalida.Text = "";
                Txtvllegada.Text = "";
                TxtSalida.Text = "";
                Txtllegada.Text = "";
                Txtprecio.Text = "";
                Txtmoneda.Text = "";
                Txttelefono.Text = "";
                Txtemail.Text = "";
                txtid.Text = "";
                alerta.Text = "<script>Swal.fire('Su vuelo se Eliminado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";


            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void LBdelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarEmpresa-esp.aspx");
        }

        protected void LBedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarEmpresaVuelos-esp.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioEmpresa2-esp.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login-esp.aspx");
        }
    }
}