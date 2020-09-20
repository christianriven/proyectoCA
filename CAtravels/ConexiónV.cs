using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace CAtravels
{
    public class ConexiónV
    {
        public static int EmpresaRpetida(string VEname, string Psalida, string Pdestino, string salida, string regreso, string Preciovuelo, int Telefono, string EVempresa)
        {
            int valor = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Vempresa FROM empresavuelos WHERE Nombre_Vempresa='" + VEname + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                //ConexiónV.AgregarVempresa(VEname, Psalida, Pdestino, salida, regreso, Preciovuelo, Moneda, Telefono, EVempresa);
            }
            conexion.Close();
            return valor;
        }

        public static int AgregarVempresa(string VEname, string Psalida,  string Pdestino, string salida, string regreso, string Preciovuelo, string Moneda, int Telefono, string EVempresa)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into empresavueloseng (Nombre_Vempresa, Pais_Salida, Pais_llegada, Salida, Regreso, Precio, Moneda, Telefono, Email) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", VEname, Psalida, Pdestino, salida, regreso, Preciovuelo, Moneda, Telefono, EVempresa), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        public static int AgregarVempresaesp(string VEname, string Psalida, string Pdestino, string salida, string regreso, string Preciovuelo, string Moneda, int Telefono, string EVempresa)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into empresavuelos (Nombre_Vempresa, Pais_Salida, Pais_llegada, Salida, Regreso, Precio, Moneda, Telefono, Email) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", VEname, Psalida, Pdestino, salida, regreso, Preciovuelo, Moneda, Telefono, EVempresa), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}