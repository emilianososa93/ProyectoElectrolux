<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productos.aspx.cs" Inherits="Productos" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td rowspan="9" style="width: 7px" bgcolor="White">
                <img alt="productos" src="images/demo/productos.png" style="width: 331px; height: 436px" /></td>
            <td align="center" bgcolor="White" colspan="4" style="font-size: 25px; color: #000000; height: 32px;">Formulario Productos<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreporte" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnreporte_Click" Text="Generar Reporte" />
            </td>
        </tr>
        <tr>
            <td align="char" bgcolor="White" colspan="4" style="border-style: outset none none none; font-size: 30px; color: #000000; height: 55px;">
                <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="Busqueda Manual"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Size="Medium" Text="Busqueda Automatica"></asp:Label>
                <br />
                <asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnbuscar" runat="server" Font-Bold="True" OnClick="btnbuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceProductos" DataTextField="nombreproducto" DataValueField="idproducto">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConnectionString="<%$ ConnectionStrings:ElectrodomesticosConnectionString %>" SelectCommand="SELECT [idproducto], [nombreproducto] FROM [Productos]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="border-style: outset none none none; height: 18px;">
                <asp:Label ID="lblidproducto" runat="server" ForeColor="Black" Text="ID Producto"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: outset none none none; height: 18px;">
                <asp:TextBox ID="txtidproducto" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="border-style: outset none none none; height: 18px;">
                <asp:Label ID="lbltipoproducto" runat="server" ForeColor="Black" Text="Tipo Producto"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: outset none none none; height: 18px;">
                <asp:TextBox ID="txttipoproducto" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="border-style: none">
                <asp:Label ID="lblnombreproducto" runat="server" ForeColor="Black" Text="Nombre Producto"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtnombreproducto" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:Label ID="lblmodelo" runat="server" ForeColor="Black" Text="Modelo"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtmodelo" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="border-style: none;">
                <asp:Label ID="lblalto" runat="server" ForeColor="Black" Text="Alto"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtalto" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:Label ID="lblancho" runat="server" ForeColor="Black" Text="Ancho"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtancho" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="border-style: none">
                <asp:Label ID="lblprofundidad" runat="server" ForeColor="Black" Text="Profundidad"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtprofundidad" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:Label ID="lblcosto" runat="server" ForeColor="Black" Text="Costo"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtcosto" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" style="border-style: none">
                <asp:Label ID="lblprecio" runat="server" ForeColor="Black" Text="Precio"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtprecio" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:Label ID="lblestado" runat="server" ForeColor="Black" Text="Estado"></asp:Label>
            </td>
            <td bgcolor="White" style="border-style: none; height: 18px">
                <asp:TextBox ID="txtestado" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" align="center" colspan="4" style="border-style: outset none outset none; height: 18px">
                <br />
                <br />
                <asp:Button ID="btnagregar" runat="server" Font-Bold="True" OnClick="btnagregar_Click" Text="Agregar" />
                <br />
                <br />
                <asp:Button ID="btneliminar" runat="server" Font-Bold="True" OnClick="btneliminar_Click" Text="Eliminar" />
&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Ingrese ID Producto"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="txteliminar" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" colspan="4" style="height: 18px">
                <asp:Label ID="lblcambios" runat="server" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

