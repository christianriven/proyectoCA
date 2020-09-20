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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("agregarusuarios.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarClientes.aspx");
        }

      

        protected void btnlogin_Click(object sender, EventArgs e)
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
                    Response.Redirect("inicio.aspx");
                }
                else
                {
                   
                    alerta.Text = "<script>Swal.fire('Credential Error', 'Your User Name or Password are not correct', 'error') </script>";
                    txtUname.Text = "";
                    txtLcontra.Text = "";
                }


            }
            else
            {
                alerta.Text = "<script>Swal.fire('WARNING', 'Fill all the required files', 'error') </script>";
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

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginEmpresa.aspx");
        }

        protected void IMB_language_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("login-esp.aspx");
        }

        protected void txtUname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}