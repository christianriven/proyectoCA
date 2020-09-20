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
    public partial class LoginEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            if (txtAname.Text != "" && txtLcontra.Text != "")
            {
                string contra, username;
                contra = EncryptString(txtLcontra.Text, initVector);
                username = txtAname.Text;
                valores.valorGlobal = username;

                //int retorno = 0;
                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= catravels; Uid=root; pwd=;");
                var cmd = "SELECT Id_cliente from clientes WHERE Nombre_Empresa='" + username + "' AND Contraseña='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = txtAname; 
                    Response.Redirect("InicioEmpresa.aspx");
                }
                else
                {

                    alerta.Text = "<script>Swal.fire('Credential Error', 'Your Username or Password are not correct', 'error') </script>";
                    txtAname.Text = "";
                    txtLcontra.Text = "";
                }


            }
            else
            {
                alerta.Text = "<script>Swal.fire('WARNING', 'Fill all the required fields', 'error') </script>";
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarClientes.aspx");
        }
    }
}