using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de clsProductos
/// </summary>
public class clsProductos : clsConexion
{
    string tabla = "Productos";
    protected int idproducto,alto, ancho, profundidad, costo, precio;
    protected string tipoproducto, nombreproducto, modelo, estado;

    public clsProductos(int idproducto, string tipoproducto, string nombreproducto, string modelo, int alto, int ancho,int profundidad, int costo, int precio, string estado)
    {
        this.idproducto = idproducto;
        this.tipoproducto = tipoproducto;
        this.nombreproducto = nombreproducto;
        this.modelo = modelo;
        this.alto = alto;
        this.ancho = ancho;
        this.profundidad = profundidad;
        this.costo = costo;
        this.precio = precio;
        this.estado = estado;
    }

    public int Idproducto
    {
        set { idproducto = value; }
        get { return idproducto; }
    }
    public string Tipoproducto
    {
        set { tipoproducto = value; }
        get { return tipoproducto; }
    }
    public string Nombreproducto
    {
        set { nombreproducto = value; }
        get { return nombreproducto; }
    }
    public string Modelo
    {
        set { modelo = value; }
        get { return modelo; }
    }
    public int Alto
    {
        set { alto = value; }
        get { return alto; }
    }
    public int Ancho
    {
        set { ancho = value; }
        get { return ancho; }
    }
    public int Profundidad
    {
        set { profundidad = value; }
        get { return profundidad; }
    }
    public int Costo
    {
        set { costo = value; }
        get { return costo; }
    }
    public int Precio
    {
        set { precio = value; }
        get { return precio; }
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
        fila["idproducto"] = Idproducto;
        fila["tipoproducto"] = Tipoproducto;
        fila["nombreproducto"] = Nombreproducto;
        fila["modelo"] = Modelo;
        fila["alto"] = Alto;
        fila["ancho"] = Ancho;
        fila["profundidad"] = Profundidad;
        fila["costo"] = Costo;
        fila["precio"] = Precio;
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
            if (int.Parse(fila["idproducto"].ToString()) == valor)
            {
                Idproducto = int.Parse(fila["idproducto"].ToString());
                Tipoproducto = fila["tipoproducto"].ToString();
                Nombreproducto = fila["nombreproducto"].ToString();
                Modelo = fila["modelo"].ToString();
                Alto = int.Parse(fila["alto"].ToString());
                Ancho = int.Parse(fila["ancho"].ToString());
                Profundidad = int.Parse(fila["profundidad"].ToString());
                Costo = int.Parse(fila["costo"].ToString());
                Precio = int.Parse(fila["precio"].ToString());
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
            if (int.Parse(fila["idproductos"].ToString()) == valor)
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