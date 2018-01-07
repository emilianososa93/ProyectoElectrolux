using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MiLibreria
{
    public class Utilidades
    {
        public static DataSet Ejecutar(string cmd)
        {
            SqlConnection conexion = new SqlConnection("Data Source = EMILIANO/SQLEXPRESS;Initial Catalog = Electrodomesticos;Integrated Security = True");
            conexion.Open();
            DataSet DS = new DataSet();
            SqlDataAdapter DP = new SqlDataAdapter(cmd, conexion);
            DP.Fill(DS);
            conexion.Close();
            return DS;

            
        }
    }
}
