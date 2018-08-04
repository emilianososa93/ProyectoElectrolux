using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de cldDetalleVentas
/// </summary>
public class cldDetalleVentas
{
    private int iddetalle, cantidad, idventa;
    private double descuento, preciocosto,preciovendido;
    private clsProductos producto;

    public int Iddetalle
    {
        get
        {
            return iddetalle;
        }

        set
        {
            iddetalle = value;
        }
    }

    public int Cantidad
    {
        get
        {
            return cantidad;
        }

        set
        {
            cantidad = value;
        }
    }

    public int Idventa
    {
        get
        {
            return idventa;
        }

        set
        {
            idventa = value;
        }
    }

    public double Descuento
    {
        get
        {
            return descuento;
        }

        set
        {
            descuento = value;
        }
    }

    public double Preciocosto
    {
        get
        {
            return preciocosto;
        }

        set
        {
            preciocosto = value;
        }
    }

    public double Preciovendido
    {
        get
        {
            return preciovendido;
        }

        set
        {
            preciovendido = value;
        }
    }

    public clsProductos Producto
    {
        get
        {
            return producto;
        }

        set
        {
            producto = value;
        }
    }

    public cldDetalleVentas()
    {
        producto = new clsProductos(0, "", "", "", 0, 0, 0, 0, 0, ""); 
    }
}