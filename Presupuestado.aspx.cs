using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Presupuestado : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime _fechapresupuesto = Convert.ToDateTime("01/01/2000");
            clsPresupuestado presupuesto = new clsPresupuestado(0, _fechapresupuesto, "", "", "", 0);
            presupuesto.Idpresupuesto= int.Parse(txtidpresupuesto.Text.Trim());
            presupuesto.Fechapresupuesto = Convert.ToDateTime(txtfechapresupuesto.Text);
            presupuesto.Nombrecliente = txtnombrecliente.Text;
            presupuesto.Localidad = txtlocalidad.Text;
            presupuesto.Descripcion = txtdescripcion.Text;
            presupuesto.Costo = int.Parse(txtcosto.Text);

            presupuesto.Agregar();
            
            txtidpresupuesto.Text = "";
            txtfechapresupuesto.Text = "";
            txtnombrecliente.Text = "";
            txtlocalidad.Text = "";
            txtdescripcion.Text = "";
            txtcosto.Text = "";
            MessageBox.Show("Se ha completado la carga");
        }
        catch
        {
            MessageBox.Show("ERROR: Revisar datos");
        }
    }
}