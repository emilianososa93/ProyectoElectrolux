using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de clsPresupuestado
/// </summary>
public class clsPresupuestado: clsConexion
{
    public string tabla = "presupuestos";
    private int idpresupuesto,costo;
    protected string localidad, descripcion, nombrecliente;
    private DateTime fechapresupuesto;

    public int Idpresupuesto
    {
        get
        {
            return idpresupuesto;
        }

        set
        {
            idpresupuesto = value;
        }
    }

    public int Costo
    {
        get
        {
            return costo;
        }

        set
        {
            costo = value;
        }
    }

    public string Nombrecliente
    {
        get
        {
            return nombrecliente;
        }

        set
        {
            nombrecliente = value;
        }
    }

    public string Localidad
    {
        get
        {
            return localidad;
        }

        set
        {
            localidad = value;
        }
    }

    public DateTime Fechapresupuesto
    {
        get
        {
            return fechapresupuesto;
        }

        set
        {
            fechapresupuesto = value;
        }
    }

    public string Descripcion
    {
        get
        {
            return descripcion;
        }

        set
        {
            descripcion = value;
        }
    }

    public clsPresupuestado(int idpresupuesto, DateTime fechapresupuesto, string nombrecliente, string localidad, string descripcion, int costo)
    {
        this.idpresupuesto = idpresupuesto;
        this.fechapresupuesto = fechapresupuesto;
        this.nombrecliente = nombrecliente;
        this.localidad = localidad;
        this.descripcion = descripcion;
        this.costo = costo;
    }

    public void Agregar()
    {
        Conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["idpresupuesto"] = Idpresupuesto;
        fila["fechapresupuesto"] = Fechapresupuesto;
        fila["nombrecliente"] = Nombrecliente;
        fila["localidad"] = Localidad;
        fila["descripcion"] = Descripcion;
        fila["costo"] = Costo;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);

    }


}