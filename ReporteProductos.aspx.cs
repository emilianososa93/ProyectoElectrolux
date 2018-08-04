using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Drawing;
using CrystalDecisions.Web;
using CrystalDecisions.Shared;

public partial class ReporteProductos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            clsConexion con = new clsConexion();
            string strConexion = ConfigurationManager.ConnectionStrings["ElectrodomesticosConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(strConexion);
            DataSetElectrodomesticos data = new DataSetElectrodomesticos();
            string sql = "SELECT [idproducto], [tipoproducto],[nombreproducto],[modelo],[alto],[ancho],[profundidad],[costo],[precio],[estado] FROM[Electrodomesticos].[dbo].[Productos]";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conexion);
            adapter.Fill(data.Productos);

            CrystalDecisions.CrystalReports.Engine.ReportDocument reporte = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            reporte.Load(Server.MapPath("reportes/CrystalReportProductos.rpt"));
            reporte.SetDataSource(data);
            CrystalReportViewerProductos.ReportSource = reporte;
        }
        catch { }
    }
}