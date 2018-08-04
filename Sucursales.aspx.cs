using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Sucursales : System.Web.UI.Page
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
            clsSucursales sucursal = new clsSucursales(0, "", "", "", "", "");
            sucursal.Idsucursal = int.Parse(txtidsucursal.Text.Trim());
            sucursal.Nombresucursal = txtnombresucursal.Text;
            sucursal.Direccion = txtdireccion.Text;
            sucursal.Localidad = txtlocalidad.Text;
            sucursal.Telefono = (txttelefono.Text);
            sucursal.Encargado = txtencargado.Text;

            sucursal.Agregar();

            lblcambios.Text = "Se ha regitrado con exito";
            txtidsucursal.Text = "";
            txtnombresucursal.Text = "";
            txtdireccion.Text = "";
            txtlocalidad.Text = "";
            txttelefono.Text = "";
            txtencargado.Text = "";

            txtidsucursal.Focus();
            MessageBox.Show("Se ha completado la carga");
        }
        catch
        {
            MessageBox.Show("ERROR: Revisar datos");
        }
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        clsSucursales sucursal = new clsSucursales(0, "", "", "", "", "");
        if (sucursal.Existe(int.Parse(txtbuscar.Text)))
        {
            txtidsucursal.Text = sucursal.Idsucursal.ToString();
            txtnombresucursal.Text = sucursal.Nombresucursal;
            txtdireccion.Text = sucursal.Direccion;
            txtlocalidad.Text = sucursal.Localidad;
            txttelefono.Text = sucursal.Telefono;
            txtencargado.Text = sucursal.Encargado;

            txtbuscar.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            txtidsucursal.Text = "";
            txtnombresucursal.Text = "";
            txtdireccion.Text = "";
            txtlocalidad.Text = "";
            txttelefono.Text = "";
            txtencargado.Text = "";
            txtidsucursal.Focus();
        }
    }

    protected void btneliminar_Click(object sender, EventArgs e)
    {
        clsSucursales sucursal = new clsSucursales(0, "", "", "", "", "");
        if (sucursal.Eliminar(int.Parse(txteliminar.Text)))
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
}