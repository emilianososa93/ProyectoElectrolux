<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Presupuestado.aspx.cs" Inherits="Presupuestado" %>
<%@ Register assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" Tagprefix="asp" Runat="server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="White" style="width: 100%">
        <tr>
            <td rowspan="7" style="width: 44px">
                <img alt="presupuesto" src="images/demo/presupuesto.png" style="width: 370px; height: 300px" /></td>
            <td align="center" colspan="4" style="height: 24px; font-size: 25px; color: #000000; font-weight: normal; text-decoration: underline;">
                Presupuesto<br />
            </td>
        </tr>
        <tr>
            <td style="border-style: none">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="ID Presupuesto"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtidpresupuesto" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: none">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Fecha presupuesto"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtfechapresupuesto" runat="server"></asp:TextBox>
                <asp:Image ID="Image1" runat="server" ImageUrl="images/demo/calendar-icon.png" Height="22px" />
                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" 
                    runat="server" TargetControlID="txtfechapresupuesto"
                    PopupButtonID="Image1">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="border-style: none">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Nombre Cliente"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtnombrecliente" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: none">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Localidad"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtlocalidad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Descripción"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="border-style: outset none outset none">
                <asp:TextBox ID="txtdescripcion" runat="server" Height="228px" Width="833px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td align="left" style="border-style: none">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="TOTAL:"></asp:Label>
            </td>
            <td align="left" style="border-style: none">
                <asp:TextBox ID="txtcosto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Crear Presupuesto" />
            </td>
        </tr>
    </table>
</asp:Content>

