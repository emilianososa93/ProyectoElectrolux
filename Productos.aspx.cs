using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

public partial class Productos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if ((bool)(Session["login"]) == false)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        catch { Response.Redirect("~/Login.aspx"); }

    }

    protected void btnagregar_Click(object sender, EventArgs e)
    {
        try
        {
            clsProductos producto = new clsProductos(0, "", "", "", 0, 0, 0, 0, 0, "");
            producto.Idproducto = int.Parse(txtidproducto.Text.Trim());
            producto.Tipoproducto = txttipoproducto.Text;
            producto.Nombreproducto = txtnombreproducto.Text;
            producto.Modelo = txtmodelo.Text;
            producto.Alto = int.Parse(txtalto.Text);
            producto.Ancho = int.Parse(txtancho.Text);
            producto.Profundidad = int.Parse(txtprofundidad.Text);
            producto.Costo = int.Parse(txtcosto.Text);
            producto.Precio = int.Parse(txtprecio.Text);
            producto.Estado = txtestado.Text;

            producto.Agregar();

            lblcambios.Text = "Se ha regitrado con exito";
            txtidproducto.Text = "";
            txttipoproducto.Text = "";
            txtnombreproducto.Text = "";
            txtmodelo.Text = "";
            txtalto.Text = "";
            txtancho.Text = "";
            txtprofundidad.Text = "";
            txtcosto.Text = "";
            txtprecio.Text = "";
            txtestado.Text = "";

            txtidproducto.Focus();
            MessageBox.Show("Se ha completado la carga");
        }
        catch
        {
            MessageBox.Show("ERROR: Revisar datos");
        }
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        clsProductos producto = new clsProductos(0, "", "", "", 0, 0, 0, 0, 0, "");
        if (producto.Existe(int.Parse(txtbuscar.Text)))
        {
            txtidproducto.Text = producto.Idproducto.ToString();
            txttipoproducto.Text = producto.Tipoproducto;
            txtnombreproducto.Text = producto.Nombreproducto;
            txtmodelo.Text = producto.Modelo;
            txtalto.Text = producto.Alto.ToString();
            txtancho.Text = producto.Ancho.ToString();
            txtprofundidad.Text = producto.Profundidad.ToString();
            txtcosto.Text = producto.Costo.ToString();
            txtprecio.Text = producto.Precio.ToString();
            txtestado.Text = producto.Estado;

            txtbuscar.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            lblcambios.Text = "Se ha regitrado con exito";
            txtidproducto.Text = "";
            txttipoproducto.Text = "";
            txtnombreproducto.Text = "";
            txtmodelo.Text = "";
            txtalto.Text = "";
            txtancho.Text = "";
            txtprofundidad.Text = "";
            txtcosto.Text = "";
            txtprecio.Text = "";
            txtestado.Text = "";

            txtbuscar.Focus();
        }
    }

    protected void btneliminar_Click(object sender, EventArgs e)
    {
        clsProductos producto = new clsProductos(0, "", "", "", 0, 0, 0, 0, 0, "");

        if (producto.Eliminar(int.Parse(txteliminar.Text)))
        {
            MessageBox.Show("REGISTRO BORRADO");
            txteliminar.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            txteliminar.Focus();
        }
    }

    protected void btnreporte_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("ReporteProductos.aspx");
        }
        catch {
        }
    }
}