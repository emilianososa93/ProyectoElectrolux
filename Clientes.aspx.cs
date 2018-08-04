using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Clientes : System.Web.UI.Page
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
            DateTime _fechaingreso = Convert.ToDateTime("01/01/2000");
            clsClientes cliente = new clsClientes(0,"","","","","","",0,"",_fechaingreso,"","","");
            cliente.Idcliente = int.Parse(txtidcliente.Text.Trim());
            cliente.Nombre = txtnombre.Text;
            cliente.Apellido = txtapellido.Text;
            cliente.Domicilio = txtdomicilio.Text;
            cliente.Provincia =(txtprovincia.Text);
            cliente.Nacionalidad = txtnacionalidad.Text;
            cliente.Localidad = txtlocalidad.Text;
            cliente.Codigopostal = int.Parse(txtcodigopostal.Text);
            cliente.Telefono = txttelefono.Text;
            cliente.Fechaingreso = Convert.ToDateTime(txtfechaingreso.Text);
            cliente.Observacion = txtobservacion.Text;
            cliente.Descripcioniva = txtdescripcioniva.Text;
            cliente.Estado = txtestado.Text;

            cliente.Agregar();

            lblcambios.Text = "Se ha regitrado con exito";
            txtidcliente.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtdomicilio.Text = "";
            txtprovincia.Text = "";
            txtnacionalidad.Text = "";
            txtlocalidad.Text = "";
            txtcodigopostal.Text = "";
            txttelefono.Text = "";
            txtfechaingreso.Text = "";
            txtobservacion.Text = "";
            txtdescripcioniva.Text = "";
            txtestado.Text = "";
            
            txtidcliente.Focus();
            MessageBox.Show("Se ha completado la carga");
        }
        catch
        {
            MessageBox.Show("ERROR: Revisar datos");
        }
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        DateTime _fechaingreso = Convert.ToDateTime("01/01/2000");
        clsClientes cliente = new clsClientes(0, "", "", "", "", "", "", 0, "", _fechaingreso, "", "", "");
        if (cliente.Existe(int.Parse(txtbusqueda.Text)))
        {
            txtidcliente.Text = cliente.Idcliente.ToString();
            txtnombre.Text = cliente.Nombre;
            txtapellido.Text = cliente.Apellido;
            txtdomicilio.Text = cliente.Domicilio;
            txtprovincia.Text = cliente.Provincia;
            txtnacionalidad.Text = cliente.Nacionalidad;
            txtlocalidad.Text = cliente.Localidad;
            txtcodigopostal.Text = cliente.Codigopostal.ToString();
            txttelefono.Text = cliente.Telefono;
            txtfechaingreso.Text = cliente.Fechaingreso.ToString();
            txtobservacion.Text = cliente.Observacion;
            txtdescripcioniva.Text = cliente.Descripcioniva;
            txtestado.Text = cliente.Estado;

            txtbusqueda.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            txtidcliente.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtdomicilio.Text = "";
            txtprovincia.Text = "";
            txtnacionalidad.Text = "";
            txtlocalidad.Text = "";
            txtcodigopostal.Text = "";
            txttelefono.Text = "";
            txtfechaingreso.Text = "";
            txtobservacion.Text = "";
            txtdescripcioniva.Text = "";
            txtestado.Text = "";
            txtbusqueda.Focus();
        }
    }

    protected void btneliminar_Click(object sender, EventArgs e)
    {
        DateTime _fechaingreso = Convert.ToDateTime("01/01/2000");
        clsClientes cliente = new clsClientes(0, "", "", "", "", "", "", 0, "", _fechaingreso, "", "", "");
        if (cliente.Eliminar(int.Parse(txteliminar.Text)))
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
