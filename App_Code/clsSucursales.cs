using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de clsSucursales
/// </summary>
public class clsSucursales : clsConexion
{
    string tabla = "sucursales";
    protected int idsucursal;
    protected string nombresucursal, direccion, localidad, telefono, encargado;

    public clsSucursales(int idsucursal, string nombresucursal, string direccion, string localidad, string telefono, string encargado)
    {
        this.idsucursal = idsucursal;
        this.nombresucursal = nombresucursal;
        this.direccion = direccion;
        this.localidad = localidad;
        this.telefono = telefono;
        this.encargado = encargado;
    }

    public int Idsucursal
    {
        set { idsucursal = value; }
        get { return idsucursal; }
    }
    public string Nombresucursal
    {
        set { nombresucursal = value; }
        get { return nombresucursal; }
    }
    public string Direccion
    {
        set { direccion = value; }
        get { return direccion; }
    }
    public string Localidad
    {
        set { localidad = value; }
        get { return localidad; }
    }
    public string Telefono
    {
        set { telefono = value; }
        get { return telefono; }
    }
    public string Encargado
    {
        set { encargado = value; }
        get { return encargado; }
    }

    public void Agregar()
    {
        Conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["idsucursal"] = Idsucursal;
        fila["nombresucursal"] = Nombresucursal;
        fila["direccion"] = Direccion;
        fila["localidad"] = Localidad;
        fila["telefono"] = Telefono;
        fila["encargado"] = Encargado;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);

    }


    public bool Existe(int valor)
    {
        Conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            if (int.Parse(fila["idsucursal"].ToString()) == valor)
            {
                Idsucursal = int.Parse(fila["idsucursal"].ToString());
                Nombresucursal = fila["nombresucursal"].ToString();
                Direccion = fila["direccion"].ToString();
                Localidad = fila["localidad"].ToString();
                Telefono = fila["telefono"].ToString();
                Encargado = fila["encargado"].ToString();
                return true;
            }
        }
        return false;
    }

    public bool Eliminar(int valor)
    {
        Conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            if (int.Parse(fila["idsucursal"].ToString()) == valor)
            {
                fila = Data.Tables[tabla].Rows[i];
                fila.Delete();
                DataTable tablaborrados;
                tablaborrados = Data.Tables[tabla].GetChanges(DataRowState.Deleted);
                AdaptadorDatos.Update(tablaborrados);
                Data.Tables[tabla].AcceptChanges();
                return true;
            }
        }
        return false;
    }
}