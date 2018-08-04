using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Empleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void puedeGuardar()
    {
        if (txtidempleado.Text ==  "" && txtnombre.Text == "" && txtapellido.Text == "" &&  txtsexo.Text == "" && txtfechanacimiento.Text == "" && txtdocumento.Text == "" && txtcuit.Text == "" && txtdireccion.Text == "" && txtlocalidad.Text == "" && txtcodigopostal.Text == "" && txtprovincia.Text == "" && txtnacionalidad.Text == "" && txttelefono.Text == "" && txtcorreo.Text == "" && txtsueldo.Text == "" && txtfechaalta.Text == "" && txtestado.Text == "")
        {
            btnagregar.Enabled = false;
        }
        else
        {
            btnagregar.Enabled = true;
        }
    }

    protected void btnagregar_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime _fechanacimiento = Convert.ToDateTime("01/01/2000");
            DateTime _fechaalta = Convert.ToDateTime("01/01/2000");
            cldEmpleados empleado = new cldEmpleados(0, "", "", "", _fechanacimiento, "", "", "", "", 0, "", "", "", "", 0, _fechaalta, "");
            empleado.Idempleado = int.Parse(txtidempleado.Text.Trim());
            empleado.Nombre = txtnombre.Text;
            empleado.Apellido = txtapellido.Text;
            empleado.Sexo = txtsexo.Text;
            empleado.Fechanacimiento = Convert.ToDateTime(txtfechanacimiento.Text);
            empleado.Documento = txtdocumento.Text;
            empleado.Cuit = txtcuit.Text;
            empleado.Direccion = txtdireccion.Text;
            empleado.Localidad = txtlocalidad.Text;
            empleado.Codigopostal = int.Parse(txtcodigopostal.Text);
            empleado.Provincia = txtprovincia.Text;
            empleado.Nacionalidad = txtnacionalidad.Text;
            empleado.Telefono = txttelefono.Text;
            empleado.Correo = txtcorreo.Text;
            empleado.Sueldo = int.Parse(txtsueldo.Text);
            empleado.Fechaalta = Convert.ToDateTime(txtfechaalta.Text);
            empleado.Estado = txtestado.Text;

            empleado.Agregar();

            lblcambios.Text = "Se ha regitrado con exito";
            txtidempleado.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtsexo.Text = "";
            txtfechanacimiento.Text = "";
            txtdocumento.Text = "";
            txtcuit.Text = "";
            txtdireccion.Text = "";
            txtlocalidad.Text = "";
            txtcodigopostal.Text = "";
            txtprovincia.Text = "";
            txtnacionalidad.Text = "";
            txttelefono.Text = "";
            txtcorreo.Text = "";
            txtsueldo.Text = "";
            txtfechaalta.Text = "";
            txtidempleado.Focus();
            MessageBox.Show("Se ha completado la carga");
        }
        catch {
            MessageBox.Show("ERROR: Revisar datos");
        }  

    }

    protected void txtidempleado_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtnombre_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtapellido_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtsexo_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtcorreo_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtdocumento_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtcuit_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtprovincia_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtlocalidad_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtdireccion_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtcodigopostal_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtnacionalidad_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txttelefono_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtfechanacimiento_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtfechaalta_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void txtsueldo_TextChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void dprlestado_SelectedIndexChanged(object sender, EventArgs e)
    {
        puedeGuardar();
    }

    protected void btneliminar_Click(object sender, EventArgs e)
    {
        DateTime _fechanacimiento = Convert.ToDateTime("01/01/2000");
        DateTime _fechaalta = Convert.ToDateTime("01/01/2000");
        cldEmpleados empleado = new cldEmpleados(0, "", "", "", _fechanacimiento, "", "", "", "", 0, "", "", "", "", 0, _fechaalta, "");
        if (empleado.Eliminar(int.Parse(txtideliminar.Text)))
        {
            MessageBox.Show("REGISTRO BORRADO");
            txtideliminar.Text = "";
        }else
        {
            MessageBox.Show("ID INCORRECTA");
            txtideliminar.Focus();
        }
    }

    protected void btnbusqueda_Click(object sender, EventArgs e)
    {
        DateTime _fechanacimiento = Convert.ToDateTime("01/01/2000");
        DateTime _fechaalta = Convert.ToDateTime("01/01/2000");
        cldEmpleados empleado = new cldEmpleados(0, "", "", "", _fechanacimiento, "", "", "", "", 0, "", "", "", "", 0, _fechaalta, "");
        if (empleado.Existe(int.Parse(txtbusqueda.Text)))
        {
            txtidempleado.Text = empleado.Idempleado.ToString();
            txtnombre.Text = empleado.Nombre;
            txtapellido.Text = empleado.Apellido;
            txtsexo.Text = empleado.Sexo;
            txtfechanacimiento.Text = empleado.Fechanacimiento.ToString();
            txtdocumento.Text = empleado.Documento;
            txtcuit.Text = empleado.Cuit;
            txtdireccion.Text = empleado.Direccion;
            txtlocalidad.Text = empleado.Localidad;
            txtcodigopostal.Text = empleado.Codigopostal.ToString();
            txtprovincia.Text = empleado.Provincia;
            txtnacionalidad.Text = empleado.Nacionalidad;
            txttelefono.Text = empleado.Telefono;
            txtcorreo.Text = empleado.Correo;
            txtsueldo.Text = empleado.Sueldo.ToString();
            txtfechaalta.Text = empleado.Fechaalta.ToString();
            txtbusqueda.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            txtidempleado.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtsexo.Text = "";
            txtfechanacimiento.Text = "";
            txtdocumento.Text = "";
            txtcuit.Text = "";
            txtdireccion.Text = "";
            txtlocalidad.Text = "";
            txtcodigopostal.Text = "";
            txtprovincia.Text = "";
            txtnacionalidad.Text = "";
            txttelefono.Text = "";
            txtcorreo.Text = "";
            txtsueldo.Text = "";
            txtfechaalta.Text = "";
            txtbusqueda.Focus();
        }
    }

    protected void dprempleados_SelectedIndexChanged(object sender, EventArgs e)
    {
        DateTime _fechanacimiento = Convert.ToDateTime("01/01/2000");
        DateTime _fechaalta = Convert.ToDateTime("01/01/2000");
        cldEmpleados empleado = new cldEmpleados(0, "", "", "", _fechanacimiento, "", "", "", "", 0 , "", "", "", "", 0 , _fechaalta,"");
        if (empleado.Existe(int.Parse(dprempleados.SelectedValue)))
        {
            txtidempleado.Text = empleado.Idempleado.ToString();
            txtnombre.Text = empleado.Nombre;
            txtapellido.Text = empleado.Apellido;
            txtsexo.Text = empleado.Sexo;
            txtfechanacimiento.Text = empleado.Fechanacimiento.ToString();
            txtdocumento.Text = empleado.Documento;
            txtcuit.Text = empleado.Cuit;
            txtdireccion.Text = empleado.Direccion;
            txtlocalidad.Text = empleado.Localidad;
            txtcodigopostal.Text = empleado.Codigopostal.ToString();
            txtprovincia.Text = empleado.Provincia;
            txtnacionalidad.Text = empleado.Nacionalidad;
            txttelefono.Text = empleado.Telefono;
            txtcorreo.Text = empleado.Correo;
            txtsueldo.Text = empleado.Sueldo.ToString();
            txtfechaalta.Text = empleado.Fechaalta.ToString();
            txtbusqueda.Text = "";
        }
        else
        {
            MessageBox.Show("ID INCORRECTA");
            txtidempleado.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtsexo.Text = "";
            txtfechanacimiento.Text = "";
            txtdocumento.Text = "";
            txtcuit.Text = "";
            txtdireccion.Text = "";
            txtlocalidad.Text = "";
            txtcodigopostal.Text = "";
            txtprovincia.Text = "";
            txtnacionalidad.Text = "";
            txttelefono.Text = "";
            txtcorreo.Text = "";
            txtsueldo.Text = "";
            txtfechaalta.Text = "";
            txtbusqueda.Focus();
        }
    }

    
}