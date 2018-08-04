<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
    <tr>
        <td bgcolor="White" rowspan="6" style="width: 258px">
            <img alt="login" src="images/demo/login.png" style="width: 294px; height: 260px" /></td>
        <td bgcolor="White" colspan="2">
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Tel: (3492) 450437 / (3492) 659592"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Emiliano_sosa93@hotmail.com"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbliniciado" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#6666FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="X-Large" ForeColor="Gray" Text="Iniciar Sesión"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-style: none; height: 41px; width: 54px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblusuario" runat="server" ForeColor="Black" Text="Usuario"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 41px; ">
            <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td bgcolor="White" style="border-style: none; height: 52px; width: 54px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcontraseña" runat="server" ForeColor="Black" Text="Contraseña"></asp:Label>
        </td>
        <td bgcolor="White" style="border-style: none; height: 52px">
            <asp:TextBox ID="txtcontraseña" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CheckBox ID="chkrecordar" runat="server" ForeColor="Black" Text="Recordar la proxima vez" />
        </td>
    </tr>
    <tr>
        <td bgcolor="White" colspan="2" style="height: 21px">
            <asp:Label ID="lblestado" runat="server" ForeColor="Black"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="White" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btningresar" runat="server" Font-Bold="True" Text="Ingresar" Width="126px" OnClick="btningresar_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" ForeColor="#3333CC" NavigateUrl="~/Empleados.aspx">Registrarse</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElectrodomesticosConnectionString %>" SelectCommand="consulta" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtusuario" Name="usuario" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtcontraseña" Name="contraseña" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    
</asp:Content>

