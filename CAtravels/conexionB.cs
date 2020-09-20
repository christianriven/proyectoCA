using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace CAtravels
{
    public class conexionB
    {
        public static int UsuariosRepetidos(string Nempresa, string Cempresa, string Nrepresentante, string Crepresentante, string contra)
        {
            int valor = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_cliente FROM clientes WHERE Email_empresa='" + Cempresa + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                conexionB.AgregarUsuario(Nempresa, Cempresa, Nrepresentante, Crepresentante, contra);
            }
            conexion.Close();
            return valor;
        }
        
        public static int AgregarUsuario(string Nempresa, string Cempresa, string Nrepresentante, string Crepresentante, string contra)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into clientes (Nombre_Empresa, Email_Empresa, Nombre_Representante, Email_Representante, Contraseña) values ('{0}','{1}','{2}','{3}','{4}')", Nempresa, Cempresa, Nrepresentante, Crepresentante, contra), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}