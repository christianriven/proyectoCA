using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;


namespace CAtravels
{
    public partial class AgregarUsuarios_esp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Txtusername.Text.Trim() != "" && TxtName.Text.Trim() != "" && Txtcontra.Text != "" && TxtVcontra.Text != "" && TxtEmail.Text.Trim() != "" && TxtCell.Text.Trim() != "")
            {
                if (Txtcontra.Text == TxtVcontra.Text)
                {
                    string username;
                    string nombre;
                    string ncell;
                    string email;
                    string encriptada;

                    username = Txtusername.Text;
                    nombre = TxtName.Text;
                    ncell = TxtCell.Text;
                    email = TxtEmail.Text;
                    encriptada = encriptada = EncryptString(Txtcontra.Text, initVector);
                    if (conexionA.UsuariosRepetidos(username, nombre, encriptada, email, ncell) == 0)
                    {
                        alerta.Text = "<script>Swal.fire('El usuario se agrego perfectamente', 'Bienvenido', 'success'); </script>";
                        Txtusername.Text = "";
                        TxtName.Text = "";
                        TxtEmail.Text = "";
                        Txtcontra.Text = "";
                        TxtVcontra.Text = "";
                        TxtCell.Text = "";
                        Response.Redirect("inicio-esp.aspx");

                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('El nombre de usuario ya es existente', 'Por favor escoja otro', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Las contraseñas no coinciden', 'repita la contraseña', 'error');</script>";
                }



            }
            else
            {
                alerta.Text = "<script>Swal.fire('PRECAUCION', 'Por favor no deje espacios vacios', 'error') </script>";
            }
        }
        private const string initVector = "pemgail9uzpgzl88";

        private const int keysize = 256;
        //Encrypt
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