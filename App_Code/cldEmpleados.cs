using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de cldEmpleados
/// </summary>
public class cldEmpleados : clsConexion
{
    string tabla = "empleados";
    protected int idempleado, codigopostal, sueldo;
    protected string nombre, apellido, sexo, direccion, localidad, provincia, nacionalidad, correo, estado, documento, cuit, telefono;
    protected DateTime fechanacimiento, fechaalta;

    public cldEmpleados(int idempleado, string nombre, string apellido, string sexo, DateTime fechanacimiento, string documento, string cuit, string direccion, string localidad, int codigopostal, string provincia, string nacionalidad, string telefono, string correo,int sueldo, DateTime fechaalta, string estado)
    {
        this.idempleado = idempleado;
        this.nombre = nombre;
        this.apellido = apellido;
        this.sexo = sexo;
        this.fechanacimiento = fechanacimiento;
        this.documento = documento;
        this.cuit = cuit;
        this.direccion = direccion;
        this.localidad = localidad;
        this.codigopostal = codigopostal;
        this.provincia = provincia;
        this.nacionalidad = nacionalidad;
        this.telefono = telefono;
        this.correo = correo;
        this.sueldo = sueldo;
        this.fechaalta = fechaalta;
        this.estado = estado;      
        
    }

    public int Idempleado
    {
        set { idempleado = value; }
        get { return idempleado; }
    }
    public string Documento
    {
        set { documento = value; }
        get { return documento; }
    }
    public string Cuit
    {
        set { cuit = value; }
        get { return cuit; }
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
    public int Sueldo
    {
        set { sueldo = value; }
        get { return sueldo; }
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
    public string Sexo
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Direccion
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Localidad
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Provincia
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Nacionalidad
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Correo
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public string Estado
    {
        set { nombre = value; }
        get { return nombre; }
    }
    public DateTime Fechanacimiento
    {
        set { fechanacimiento = value; }
        get { return fechanacimiento; }
    }
    public DateTime Fechaalta
    {
        set { fechaalta = value; }
        get { return fechaalta; }
    }

    public void Agregar()
    {
        Conectar(tabla);
        DataRow fila;  
        fila = Data.Tables[tabla].NewRow();
        fila["idempleado"] = Idempleado;
        fila["nombre"] = Nombre;
        fila["apellido"] = Apellido;
        fila["sexo"] = Sexo;
        fila["fechanacimiento"] = Fechanacimiento;
        fila["documento"] = Documento;
        fila["cuit"] = Cuit;
        fila["direccion"] = Direccion;
        fila["localidad"] = Localidad;
        fila["codigopostal"] = Codigopostal;
        fila["provincia"] = Provincia;
        fila["nacionalidad"] = Nacionalidad;
        fila["telefono"] = Telefono;
        fila["correo"] = Correo;
        fila["sueldo"] = Sueldo;
        fila["fechaalta"] = Fechaalta;
        fila["estado"] = Estado;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);

    }

    public bool Eliminar(int valor)
    {
        Conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            if (int.Parse(fila["idempleado"].ToString())== valor)
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

    public bool Existe(int valor)
    {
        Conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            if (int.Parse(fila["idempleado"].ToString()) == valor)
            {
                Idempleado = int.Parse(fila["idempleado"].ToString());
                Nombre = fila["nombre"].ToString();
                Apellido = fila["apellido"].ToString();
                Sexo = fila["sexo"].ToString();
                Fechanacimiento = Convert.ToDateTime(fila["fechanacimiento"]);
                Documento = fila["documento"].ToString();
                Cuit = fila["cuit"].ToString();
                Direccion = fila["direccion"].ToString();
                Localidad = fila["localidad"].ToString();
                Codigopostal = int.Parse(fila["codigopostal"].ToString());
                Provincia = fila["provincia"].ToString();
                Nacionalidad = fila["nacionalidad"].ToString();
                Telefono = fila["telefono"].ToString();
                Correo = fila["correo"].ToString();
                Sueldo = int.Parse(fila["sueldo"].ToString());
                Fechaalta = Convert.ToDateTime(fila["fechaalta"]);
                Estado = fila["estado"].ToString();
                return true;
            }
        }
        return false;
    }


}