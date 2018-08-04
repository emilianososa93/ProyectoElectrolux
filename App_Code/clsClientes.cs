using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de clsClientes
/// </summary>
public class clsClientes :clsConexion
{
    string tabla = "clientes";
    protected int idcliente,codigopostal;
    protected string nombre, apellido, domicilio, provincia, nacionalidad, localidad, telefono, observacion, descripcioniva, estado;
    protected DateTime fechaingreso;

    

    public clsClientes(int idcliente, string nombre, string apellido, string domicilio, string provincia, string nacionalidad, string localidad, int codigopostal, string telefono, DateTime fechaingreso, string observacion, string descripcioniva, string estado )
    {
        this.idcliente = idcliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.domicilio = domicilio;
        this.provincia = provincia;
        this.nacionalidad = nacionalidad;
        this.localidad = localidad;
        this.codigopostal = codigopostal;
        this.telefono = telefono;
        this.fechaingreso = fechaingreso;
        this.observacion = observacion;
        this.descripcioniva = descripcioniva;
        this.estado = estado;
    }

    public int Idcliente
    {
        set { idcliente = value; }
        get { return idcliente; }
    }
    public string Nombre
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Apellido
    {
        set { apellido = value; }
        get { return apellido; }
    }
    public string Domicilio
    {
        set { domicilio = value; }
        get { return domicilio; }
    }
    public string Provincia
    {
        set { provincia = value; }
        get { return provincia; }
    }
    public string Nacionalidad
    {
        set { nacionalidad = value; }
        get { return nacionalidad; }
    }
    public string Localidad
    {
        set { localidad = value; }
        get { return localidad; }
    }
    public int Codigopostal
    {
        set { codigopostal = value; }
        get { return codigopostal; }
    }
    public string Telefono
    {
        set { telefono = value; }
        get { return telefono; }
    }
    public DateTime Fechaingreso
    {
        set { fechaingreso = value; }
        get { return fechaingreso; }
    }
    public string Observacion
    {
        set { observacion = value; }
        get { return observacion; }
    }
    
    public string Descripcioniva
    {
        set { descripcioniva = value; }
        get { return descripcioniva; }
    }
    public string Estado
    {
        set { estado = value; }
        get { return estado; }
    }
    

    public void Agregar()
    {
        Conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["idcliente"] = Idcliente;
        fila["nombre"] = Nombre;
        fila["apellido"] = Apellido;
        fila["domicilio"] = Domicilio;
        fila["provincia"] = Provincia;
        fila["nacionalidad"] = Nacionalidad;
        fila["localidad"] = Localidad;
        fila["codigopostal"] = Codigopostal;
        fila["telefono"] = Telefono;
        fila["fechaingreso"] = Fechaingreso;
        fila["observacion"] = Observacion;
        fila["descripcionIVA"] = Descripcioniva;
        fila["estado"] = Estado;

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
            if (int.Parse(fila["idcliente"].ToString()) == valor)
            {
                Idcliente = int.Parse(fila["idcliente"].ToString());
                Nombre = fila["nombre"].ToString();
                Apellido = fila["apellido"].ToString();
                Domicilio = fila["domicilio"].ToString();
                Provincia = fila["provincia"].ToString();
                Nacionalidad = fila["nacionalidad"].ToString();
                Localidad = fila["localidad"].ToString();
                Codigopostal = int.Parse(fila["codigopostal"].ToString());
                Telefono = fila["telefono"].ToString();
                Fechaingreso = Convert.ToDateTime(fila["fechaingreso"]);
                Observacion = fila["observacion"].ToString();
                Descripcioniva = fila["descripcionIVA"].ToString();
                Estado = fila["estado"].ToString();
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
            if (int.Parse(fila["idcliente"].ToString()) == valor)
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