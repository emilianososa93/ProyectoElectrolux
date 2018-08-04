<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacto.aspx.cs" Inherits="Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="White" style="width: 101%">
        <tr>
            <td rowspan="13" style="border-style: none; width: 19%" bgcolor="White">
                &nbsp;<img alt="contacto" src="images/demo/empleados.png" style="width: 334px; height: 320px" /><td style="height: 24px; color: #000000; font-size: 25px;" align="center" colspan="3">Envíanos tus comentarios o preguntas</td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: none; height: 128px">
                <div style="color: rgb(4, 30, 65); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;">
                    <p class="basics_p1 bp10" style="margin: 10px 0px; color: rgb(100, 101, 105); padding-bottom: 10px; width: 567px;">
                        <span style="text-align: left;">Estamos encantados de ayudarle. Introduzca sus datos de contacto a continuación junto con su pregunta y nos pondremos en contacto con usted pronto.</span></p>
                </div>
                <p class="txtItalics bp10" style="margin: 10px 0px; color: rgb(100, 101, 105); padding-bottom: 10px; font-style: italic; font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; width: 565px;">
                    Los campos marcados con * son obligatorios.</p>
            </td>
            <td style="border-style: none;" rowspan="12">
                <p style="margin: 0px 0px 10px; color: rgb(100, 101, 105); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 117px;">
                    <span style="color: #000000">Lunes a Viernes de 8 a 18 y Sábado 9 a 13 hs, donde personal especializado podrá brindarle asesoramiento profesional sobre nuestros productos y servicios.</span></p>
                <p class="basics_p1" style="margin: 0px 0px 10px; color: rgb(0, 0, 0); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    Telefono</p>
                <p class="basics_p1" style="margin: 0px 0px 10px; color: rgb(100, 101, 105); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <span style="color: #000000">0800-222-3589&nbsp;</span></p>
                <p class="basics_p1" style="margin: 0px 0px 10px; color: rgb(100, 101, 105); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <span style="color: #000000">Mail</span></p>
                <p class="basics_p1" style="margin: 0px 0px 10px; color: rgb(100, 101, 105); font-family: &quot;Electrolux Sans Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <span style="color: #000000">info@electrolux.com.ar</span></p>
            </td>
        </tr>
        <tr>
            <td style="border-style: none" width="175">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="* Tema"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="175px">
                    <asp:ListItem>Garantía</asp:ListItem>
                    <asp:ListItem>Otro</asp:ListItem>
                    <asp:ListItem>Información de electrodomésticos</asp:ListItem>
                    <asp:ListItem>Servicio Técnico</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Nombre"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txtnombre" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Apellido"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txtapellido" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none" width="175">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Correo Electrónico"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtcorreo" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Confirmar Correo"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txtconfirmacioncorreo" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Telefono"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txttelefono" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Tipo Producto"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txttipoproducto" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none;" width="175">
                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Código Producto"></asp:Label>
            </td>
            <td style="border-style: none;">
                <asp:TextBox ID="txtcodigoproducto" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none" width="175">
                <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Asunto"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtasunto" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none" width="175">
                <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Mensaje"></asp:Label>
            </td>
            <td style="border-style: none">
                <asp:TextBox ID="txtmensaje" runat="server" Height="87px" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: none" width="175">
                &nbsp;</td>
            <td style="border-style: none">
                <asp:Button ID="Button1" runat="server" BackColor="#FF3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text=" Enviar mensaje" />
            </td>
        </tr>
    </table>
</asp:Content>

