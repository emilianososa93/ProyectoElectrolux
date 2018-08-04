<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<%@ Register assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" Tagprefix="asp" Runat="server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td rowspan="13" style="width: 33%" bgcolor="White">
            <img alt="empleados" src="images/demo/empleados.png" style="width: 295px; height: 516px" /></td>
        <td align="center" bgcolor="White" colspan="4" style="border-style: none none outset none; font-size: 25px; color: #000000; height: 32px;">Formulario de Empleados</td>
    </tr>
    <tr>
        <td align="char" bgcolor="White" colspan="4" style="border-style: none none outset none; font-size: 25px; color: #000000; height: 55px;"><asp:Label ID="lblbsuqedamanual" runat="server" Font-Size="Medium" Text="Busqueda Manual"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbltitulobusqueda" runat="server" Font-Size="Medium" Text="Busqueda Automatica"></asp:Label>
            <br />
            <asp:TextBox ID="txtbusqueda" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnbusqueda" runat="server" Font-Bold="True" OnClick="btnbusqueda_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dprempleados" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceEmpleados" DataTextField="nombre" DataValueField="idempleado" Height="17px" OnSelectedIndexChanged="dprempleados_SelectedIndexChanged" Width="178px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceEmpleados" runat="server" ConnectionString="<%$ ConnectionStrings:ElectrodomesticosConnectionString %>" SelectCommand="SELECT [idempleado], [nombre], [apellido] FROM [empleados]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblidempleado" runat="server" ForeColor="Black" Text="ID Empleado"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtidempleado" runat="server" Width="175px" OnTextChanged="txtidempleado_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" colspan="2" style="border-style: none; height: 18px;"></td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblnombre" runat="server" ForeColor="Black" Text="Nombre"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtnombre" runat="server" Width="175px" OnTextChanged="txtnombre_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lblapellido" runat="server" ForeColor="Black" Text="Apellido"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtapellido" runat="server" OnTextChanged="txtapellido_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblsexo" runat="server" ForeColor="Black" Text="Sexo"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtsexo" runat="server" Width="175px" OnTextChanged="txtsexo_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lblcorreo" runat="server" ForeColor="Black" Text="Correo"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtcorreo" runat="server" OnTextChanged="txtcorreo_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lbldocumento" runat="server" ForeColor="Black" Text="Documento"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtdocumento" runat="server" Width="175px" OnTextChanged="txtdocumento_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lblcuit" runat="server" ForeColor="Black" Text="CUIT"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtcuit" runat="server" OnTextChanged="txtcuit_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblprovincia" runat="server" ForeColor="Black" Text="Provincia"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtprovincia" runat="server" Width="175px" OnTextChanged="txtprovincia_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lbllocalidad" runat="server" ForeColor="Black" Text="Localidad"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtlocalidad" runat="server" OnTextChanged="txtlocalidad_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lbldireccion" runat="server" ForeColor="Black" Text="Dirección"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtdireccion" runat="server" Width="175px" OnTextChanged="txtdireccion_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lblcodigopostal" runat="server" ForeColor="Black" Text="C- Postal"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtcodigopostal" runat="server" OnTextChanged="txtcodigopostal_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblnacionalidad" runat="server" ForeColor="Black" Text="Nacionalidad"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtnacionalidad" runat="server" Width="175px" OnTextChanged="txtnacionalidad_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lbltelefono" runat="server" ForeColor="Black" Text="Telefono"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txttelefono" runat="server" OnTextChanged="txttelefono_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblfechanacimiento" runat="server" ForeColor="Black" Text="Fecha de Nacimiento"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtfechanacimiento" runat="server" Width="175px"></asp:TextBox>
            <asp:Image ID="Image2" runat="server" ImageUrl="images/demo/calendar-icon.png" Height="22px" />
            
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" 
                runat="server" TargetControlID="txtfechanacimiento"
                PopupButtonID="Image1">
            </ajaxToolkit:CalendarExtender>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 7%;">
            <asp:Label ID="lblfechaalta" runat="server" ForeColor="Black" Text="Fecha de Alta"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 18px; width: 15%;">
            <asp:TextBox ID="txtfechaalta" runat="server" Width="175px"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" ImageUrl="images/demo/calendar-icon.png" Height="22px" />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" 
                runat="server" TargetControlID="txtfechaalta"
                PopupButtonID="Image1">
            </ajaxToolkit:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="width: 114px; border-right-style: none;">
            <asp:Label ID="lblsueldo" runat="server" ForeColor="Black" Text="Sueldo"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 184px;">
            <asp:TextBox ID="txtsueldo" runat="server" Width="175px" OnTextChanged="txtsueldo_TextChanged"></asp:TextBox>
        </td>
        <td bgcolor="White" style="border-style: none; width: 7%;">
            <asp:Label ID="lblestado" runat="server" ForeColor="Black" Text="Estado"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; width: 15%;">
            <asp:TextBox ID="txtestado" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-style: outset none none none" colspan="4" align="center">
            <br />
            <br />
            <asp:Button ID="btnagregar" runat="server" Text="Agregar" OnClick="btnagregar_Click" Font-Bold="True" />
        &nbsp;
            <br />
            <br />
            <asp:Button ID="btneliminar" runat="server" Font-Bold="True" OnClick="btneliminar_Click" Text="Eliminar" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbleliminar" runat="server" ForeColor="Black" Text="Ingrese ID empleado"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtideliminar" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-style: none" colspan="4">
            <asp:Label ID="lblcambios" runat="server" ForeColor="Black" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

