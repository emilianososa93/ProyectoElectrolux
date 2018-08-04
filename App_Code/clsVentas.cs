using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsVentas
/// </summary>
public class clsVentas
{
    private int idventas, idvendedor;
    private DateTime fechaventa;
    private clsClientes cliente;
    private double montototal;

    List<cldDetalleVentas> detalleventas;

    public int Idventas
    {
        get
        {
            return idventas;
        }

        set
        {
            idventas = value;
        }
    }

    public int Idvendedor
    {
        get
        {
            return idvendedor;
        }

        set
        {
            idvendedor = value;
        }
    }

    public DateTime Fechaventa
    {
        get
        {
            return fechaventa;
        }

        set
        {
            fechaventa = value;
        }
    }

    public clsClientes Cliente
    {
        get
        {
            return cliente;
        }

        set
        {
            cliente = value;
        }
    }

    public double Montototal
    {
        get
        {
            return montototal;
        }

        set
        {
            montototal = value;
        }
    }
    public clsVentas()
    {
        DateTime _fechaingreso = Convert.ToDateTime("01/01/2000");
        cliente = new clsClientes(0, "", "", "", "", "", "", 0, "", _fechaingreso, "", "", "");
        detalleventas = new List<cldDetalleVentas>();
    }
}