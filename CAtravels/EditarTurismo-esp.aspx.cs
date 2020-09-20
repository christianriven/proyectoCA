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
    public partial class EditarTurismo_esp : System.Web.UI.Page
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

                MySqlConnection conexion = conexionBD.ObtenerConexion();
                string query = "UPDATE empresa SET Nombre_empresa = @empresa,  Ubicacion_Empresa = @Ubicacion, Precio = @Descripcion,  Moneda = @Moneda, Promocion_mes = @Promocion, Telefono_contacto= @Telefono, Email_contacto=@email WHERE Id_empresa=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@empresa", TxtEname.Text);
                comando.Parameters.AddWithValue("@Ubicacion", TxtUempresa.Text);
                comando.Parameters.AddWithValue("@Descripcion", TxtDempresa.Text);
                comando.Parameters.AddWithValue("@Moneda", Txtmoneda.Text);
                comando.Parameters.AddWithValue("@Promocion", TxtPempresa.Text);
                comando.Parameters.AddWithValue("@Telefono", TxtTempresa.Text);
                comando.Parameters.AddWithValue("@email", TxtEempresa.Text);
                comando.Parameters.AddWithValue("@id", txtid.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
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

                TxtEname.Text = "";
                TxtUempresa.Text = "";
                TxtDempresa.Text = "";
                Txtmoneda.Text = "";
                TxtPempresa.Text = "";
                TxtTempresa.Text = "";
                TxtEempresa.Text = "";
                txtid.Text = "";
                alerta.Text = "<script>Swal.fire('Su producto se Editado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarTurismo-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login-esp.aspx");
        }
    }
}