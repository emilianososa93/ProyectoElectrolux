using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using System.Configuration;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Drawing;
using CrystalDecisions.Web;
using CrystalDecisions.Shared;


public partial class ReportePresupuesto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            clsConexion con = new clsConexion();
            string strConexion = ConfigurationManager.ConnectionStrings["ElectrodomesticosConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(strConexion);
            DataSetElectrodomesticos data = new  DataSetElectrodomesticos();
            string sql = "SELECT [idpresupuesto],[fechapresupuesto],[nombrecliente],[localidad],[descripcion],[costo] FROM[Electrodomesticos].[dbo].[presupuestos]";
            SqlDataAdapter adapter = new SqlDataAdapter(sql,conexion);
            adapter.Fill(data.presupuestos);

            ReportDocument reporte = new ReportDocument();
            reporte.Load(Server.MapPath("reportes/CrystalReportPresupuestos.rpt"));
            reporte.SetDataSource(data);
            CrystalReportViewerPresupuestos.ReportSource = reporte;
        }
        catch {  }
    }
}