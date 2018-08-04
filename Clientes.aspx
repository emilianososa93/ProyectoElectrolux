<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

<%@ Register assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" Tagprefix="asp" Runat="server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td rowspan="11" style="width: 33%" bgcolor="White">
            <img alt="clientes" src="images/demo/clientes1.png" style="width: 294px; height: 450px" /></td>
        <td align="center" bgcolor="White" colspan="4" style="font-size: 25px; color: #000000; height: 32px;">Formulario de Clientes</td>
    </tr>
    <tr>
        <td align="char" bgcolor="White" colspan="4" style="border-style: outset none outset none; font-size: 30px; color: #000000; height: 55px;">
            <asp:Label ID="Label15" runat="server" Font-Size="Medium" Text="Busqueda Manual"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server" Font-Size="Medium" Text="Busqueda Automatica"></asp:Label>
            <br />
            <asp:TextBox ID="txtbusqueda" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnbuscar" runat="server" Font-Bold="True" Text="Buscar" OnClick="btnbuscar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceClientes" DataTextField="nombre" DataValueField="idcliente">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ElectrodomesticosConnectionString %>" SelectCommand="SELECT [idcliente], [nombre], [apellido] FROM [clientes]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="height: 18px;">
            <asp:Label ID="lblidcliente" runat="server" ForeColor="Black" Text="ID Cliente"></asp:Label>
        </td>
        <td bgcolor="White" style="height: 18px;">
            <asp:TextBox ID="txtidcliente" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="height: 18px;"></td>
        <td bgcolor="White" style="height: 18px;"></td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-right-style: none;">
            <asp:Label ID="lblnombre" runat="server" ForeColor="Black" Text="Nombre"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; ">
            <asp:TextBox ID="txtnombre" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; width: 11%;">
            <asp:Label ID="lblapellido" runat="server" ForeColor="Black" Text="Apellido"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 21%;">
            <asp:TextBox ID="txtapellido" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="height: 18px;">
            <asp:Label ID="lbldomicilio" runat="server" ForeColor="Black" Text="Domicilio"></asp:Label>
        </td>
        <td bgcolor="White" style="height: 18px;">
            <asp:TextBox ID="txtdomicilio" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="height: 18px;">
            <asp:Label ID="lblprovincia" runat="server" ForeColor="Black" Text="Provincia"></asp:Label>
        </td>
        <td bgcolor="White" style="height: 18px;">
            <asp:TextBox ID="txtprovincia" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-right-style: none;">
            <asp:Label ID="lblnacionalidad" runat="server" ForeColor="Black" Text="Nacionalidad"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; ">
            <asp:TextBox ID="txtnacionalidad" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; width: 11%;">
            <asp:Label ID="lbllocalidad" runat="server" ForeColor="Black" Text="Localidad"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 21%;">
            <asp:TextBox ID="txtlocalidad" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-right-style: none;">
            <asp:Label ID="lblcodigoposta" runat="server" ForeColor="Black" Text="Código Postal"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; ">
            <asp:TextBox ID="txtcodigopostal" runat="server" style="margin-left: 0px" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; width: 11%;">
            <asp:Label ID="lbltelefono" runat="server" ForeColor="Black" Text="Telefono"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 21%;">
            <asp:TextBox ID="txttelefono" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-right-style: none;">
            <asp:Label ID="lblfechaingreso" runat="server" ForeColor="Black" Text="Fecha Ingreso"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; ">
            <asp:TextBox ID="txtfechaingreso" runat="server" Width="175px"></asp:TextBox>
            <asp:Image ID="Image2" runat="server" ImageUrl="images/demo/calendar-icon.png" Height="22px" />
            <asp:ScriptManager ID="ScriptManager2" runat="server">
                            </asp:ScriptManager>
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" 
                runat="server" TargetControlID="txtfechaingreso"
                PopupButtonID="Image1">
            </ajaxToolkit:CalendarExtender>
        </td>
        <td bgcolor="White" style="border-style: none; width: 11%;">
            <asp:Label ID="lblobservacion" runat="server" ForeColor="Black" Text="Observación"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 21%;">
            <asp:TextBox ID="txtobservacion" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-right-style: none;">
            <asp:Label ID="lbldescripcioniva" runat="server" ForeColor="Black" Text="Descripción IVA"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; ">
            <asp:TextBox ID="txtdescripcioniva" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; width: 11%;">
            <asp:Label ID="lblestado" runat="server" ForeColor="Black" Text="Estado"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 21%;">
            <asp:TextBox ID="txtestado" runat="server" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" colspan="4" align="center" style="border-style: outset none none none">
            <br />
            <br />
            <asp:Button ID="btnagregar" runat="server" Text="Agregar" Font-Bold="True" OnClick="btnagregar_Click" />
            <br />
            <br />
            <asp:Button ID="btneliminar" runat="server" Text="Eliminar" Font-Bold="True" OnClick="btneliminar_Click" />
            &nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" ForeColor="Black" Text="Ingrese ID Cliente"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txteliminar" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" colspan="4">
            <asp:Label ID="lblcambios" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

