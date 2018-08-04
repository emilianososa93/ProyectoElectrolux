<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sucursales.aspx.cs" Inherits="Sucursales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td rowspan="7" style="width: 34px" bgcolor="White">
                <img alt="sucursales" src="images/demo/sucursales.png" style="width: 302px; height: 362px" /></td>
            <td align="center" bgcolor="White" colspan="4" style="font-size: 25px; color: #000000; height: 25px;">Formulario Sucursales</td>
        </tr>
        <tr>
            <td align="char" bgcolor="White" colspan="4" style="border-style: outset none outset none; font-size: 30px; color: #000000; height: 55px;">
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Busqueda Manual"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Busqueda Automatica"></asp:Label>
                <br />
                <asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnbuscar" runat="server" Font-Bold="True" OnClick="btnbuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSucursales" DataTextField="nombresucursal" DataValueField="idsucursal">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceSucursales" runat="server" ConnectionString="<%$ ConnectionStrings:ElectrodomesticosConnectionString %>" SelectCommand="SELECT [idsucursal], [nombresucursal], [localidad] FROM [sucursales]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lblidsucursale" runat="server" ForeColor="Black" Text="ID Sucursal"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txtidsucursal" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lblnombresucursale" runat="server" ForeColor="Black" Text="Nombre Sucursal"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txtnombresucursal" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lbldireccion" runat="server" ForeColor="Black" Text="Dirección"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txtdireccion" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lbllocalidad" runat="server" ForeColor="Black" Text="Localidad"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txtlocalidad" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lbltelefono" runat="server" ForeColor="Black" Text="Telefono"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txttelefono" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:Label ID="lblencargado" runat="server" ForeColor="Black" Text="Encargado"></asp:Label>
            </td>
            <td bgcolor="White" style="height: 18px">
                <asp:TextBox ID="txtencargado" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" align="center" colspan="4" style="border-style: outset none outset none">
                <br />
                <br />
                <asp:Button ID="btnagregar" runat="server" Font-Bold="True" OnClick="btnagregar_Click" Text="Agregar" />
                <br />
                <br />
                <asp:Button ID="btneliminar" runat="server" Font-Bold="True" OnClick="btneliminar_Click" Text="Eliminar" />
&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Ingrese ID Sucursal"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txteliminar" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" colspan="4" style="height: 25px">
                <asp:Label ID="lblcambios" runat="server" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

