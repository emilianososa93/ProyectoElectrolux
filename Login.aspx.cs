using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["usuario"] = false;
            if (Request.Cookies["login"] != null)
            {
                if (Request.Cookies["login"]["usuario"] != null)
                {
                    txtusuario.Text = Request.Cookies["login"]["usuario"];
                    string clv = Request.Cookies["Login"]["contraseña"];
                    txtcontraseña.Attributes.Add("Value", clv);
                }
            }
            txtusuario.Focus();
        }

    }

    protected void btningresar_Click(object sender, EventArgs e)
    {
        int numero;
        numero = 0;
        DataView dvSql = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        if (dvSql.Count > 0)
        {
            numero = 1;
        }
        if (numero == 1)
        {
            Session["usuario"] = dvSql[0].Row[0];
            Session["nombreempleado"] = dvSql[0].Row[0];
            HttpCookie coologin = new HttpCookie("login");
            Session["login"] = true;
            if (chkrecordar.Checked)
            {
                coologin["usuario"] = txtusuario.Text;
                coologin["contraseña"] = txtcontraseña.Text;
                coologin.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(coologin);
            }
            else
            {
                coologin["usuario"] = "";
                coologin["contraseña"] = "";
                coologin.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(coologin);
            }

            MessageBox.Show("BIENVENIDO "+ Session["nombreempleado"]);
            lbliniciado.Text = "Esta iniciado como:" + Session["nombreempleado"];           

            Response.Redirect("Inicio.aspx");            
        }       
    }
}