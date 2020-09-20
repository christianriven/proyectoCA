using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace CAtravels
{
    public class conexionA
    {
        public static int UsuariosRepetidos( string username, string nombre, string contra, string email, string ncell)
        {
            int valor = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_usuarios FROM usuarios WHERE User_name='" + username + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                
            }
            else
            {
                conexionA.AgregarUsuario(username, nombre, contra, email, ncell);
            }
            conexion.Close();
            return valor;
        }
        
        public static int AgregarUsuario(string username, string nombre, string contra, string email, string ncell)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (User_name, Nombre_Usuario, Password, Email_usuario, Numero_telefono) values ('{0}','{1}','{2}','{3}','{4}')" , username, nombre, contra, email, ncell), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        public static int Eliminar(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From empresavueloseng where Id_Vempresa={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }
        public static int Eliminaresp(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From empresavuelos where Id_Vempresa={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }
        public static int Eliminar2(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From empresa where Id_empresa={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }
    }
}