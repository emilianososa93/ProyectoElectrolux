using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// clsConexion (Clase de conexion de Base de datos)
/// </summary>
public class clsConexion
{
    protected SqlDataReader reader;
    protected SqlDataAdapter AdaptadorDatos;
    protected DataSet data;
    protected SqlConnection oconexion = new SqlConnection();
    public clsConexion()
    {
       
    }

    public void Conectar(string tabla)
    {
        string strConexion = ConfigurationManager.ConnectionStrings["ElectrodomesticosConnectionString"].ConnectionString;
        oconexion.ConnectionString = strConexion;
        oconexion.Open();
        AdaptadorDatos = new SqlDataAdapter("select * from " +tabla, oconexion);
        SqlCommandBuilder ejecutaComandos = new SqlCommandBuilder(AdaptadorDatos);
        Data = new DataSet();
        AdaptadorDatos.Fill(Data, tabla);
        oconexion.Close();
    }

    public DataSet Data
    {
        set { data = value; }
        get { return data; }
    }

    public SqlDataReader DataReader
    {
        set { reader = value; }
        get { return reader; }
    }
}