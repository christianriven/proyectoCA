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
    public partial class EditarTurismo : System.Web.UI.Page
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarTurismo.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioEmpresa2.aspx");
        }

        protected void LBturismo_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioEmpresa.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarTurismo.aspx");
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            if (TxtEname.Text.Trim() != "" && TxtUempresa.Text.Trim() != "" && Txtprecio.Text.Trim() != "" && TxtPempresa.Text.Trim() != "" && TxtTempresa.Text.Trim() != "" && TxtEempresa.Text.Trim() != "" && txtid.Text.Trim() != "" && Txtmoneda.Text.Trim() != "" && Txtprecio.Text.Trim() != "")
            {

                MySqlConnection conexion = conexionBD.ObtenerConexion();
                string query = "UPDATE empresaeng SET Nombre_empresa = @empresa,  Ubicacion_Empresa = @Ubicacion, Precio = @Descripcion, Promocion_mes = @Promocion, Precio = @Precio, Moneda = @Moneda, Telefono_contacto= @Telefono, Email_contacto=@email WHERE Id_empresa=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@empresa", TxtEname.Text);
                comando.Parameters.AddWithValue("@Ubicacion", TxtUempresa.Text);
                comando.Parameters.AddWithValue("@Descripcion", Txtprecio.Text);
                comando.Parameters.AddWithValue("@Promocion", TxtPempresa.Text);
                comando.Parameters.AddWithValue("@Precio", Txtprecio.Text);
                comando.Parameters.AddWithValue("@Moneda", Txtmoneda.Text);
                comando.Parameters.AddWithValue("@Telefono", TxtTempresa.Text);
                comando.Parameters.AddWithValue("@email", TxtEempresa.Text);
                comando.Parameters.AddWithValue("@id", txtid.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
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

                TxtEname.Text = "";
                TxtUempresa.Text = "";
                Txtprecio.Text = "";
                TxtPempresa.Text = "";
                TxtTempresa.Text = "";
                TxtEempresa.Text = "";
                txtid.Text = "";
                alerta.Text = "<script>Swal.fire('Your Product has been edited successfully.', 'Thanks for Prefering Us!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('WARNING', 'No deje espacios en blanco', 'error') </script>";
            }
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
                    alerta.Text = "<script>Swal.fire('It has been selected successfully', '', 'success'); </script>";

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
                alerta.Text = "<script>Swal.fire('Something went wrong, try again', 'Verify that your ID is correct', 'error') </script>";

            }
        }

        protected void TxtDempresa_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}