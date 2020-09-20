using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace CAtravels
{
    public class conexiónE
    {
        public static int EmpresaRpetida(string Ename, string Uempresa, string Dempresa, string Pempresa, string Moneda, string Tempresa, string Eempresa)
        {
            int valor = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_empresa FROM empresaeng WHERE Nombre_empresa='" + Ename + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
               // conexiónE.AgregarUsuario(Ename, Uempresa, Dempresa, Pempresa, Tempresa, Eempresa);
            }
            conexion.Close();
            return valor;
        }
        public static int AgregarUsuario(string Ename, string Uempresa, string Dempresa, string Moneda, string Pempresa, string Tempresa, string Eempresa)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into empresaeng (Nombre_empresa,	Ubicacion_Empresa, Precio, Moneda, Promocion_mes, Telefono_contacto, Email_contacto) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Ename, Uempresa, Dempresa, Moneda, Pempresa, Tempresa, Eempresa), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        public static int AgregarUsuarioesp(string Ename, string Uempresa, string Dempresa, string Moneda, string Pempresa, string Tempresa, string Eempresa)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into empresa (Nombre_empresa,	Ubicacion_Empresa, Precio, Moneda, Promocion_mes, Telefono_contacto, Email_contacto) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Ename, Uempresa, Dempresa, Moneda, Pempresa, Tempresa, Eempresa), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}