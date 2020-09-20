using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace CAtravels
{
    public partial class Login_esp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IMB_language_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LB_crearcuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarUsuarios-esp.aspx");
        }

        protected void LB_ingresarcompañia_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarClientes-esp.aspx");
        }

        protected void LB_ingresarempresa_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginEmpresa-esp.aspx");
        }

        protected void btnloginESP_Click(object sender, EventArgs e)
        {

            if (txtUname.Text != "" && txtLcontra.Text != "")
            {
                string contra, username;
                contra = EncryptString(txtLcontra.Text, initVector);
                username = txtUname.Text;
                valores.valorGlobal = username;

                //int retorno = 0;
                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= catravels; Uid=root; pwd=;");
                var cmd = "SELECT Id_usuarios from usuarios WHERE User_name='" + username + "' AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = txtUname;
                    Response.Redirect("inicio-esp.aspx");
                }
                else
                {

                    alerta.Text = "<script>Swal.fire('Error de Credenciales', 'Su Usuario es Incorrecto, intente de nuevo', 'error') </script>";
                    txtUname.Text = "";
                    txtLcontra.Text = "";
                }


            }
            else
            {
                alerta.Text = "<script>Swal.fire('CUIDADO', 'Rellene todos los Campos requeridos', 'error') </script>";
            }

        }
        private const string initVector = "pemgail9uzpgzl88";
        private const int keysize = 256;
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }

    }
}
