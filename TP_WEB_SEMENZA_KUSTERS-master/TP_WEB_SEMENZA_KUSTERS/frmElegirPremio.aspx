<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmElegirPremio.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS.frmElegirPremio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagenesProductos/PS4.jpg" />
        </td>
        <td>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/ImagenesProductos/Xbox.jpg"/>
        </td>
        <td>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/ImagenesProductos/Stadia.jpg"/>
        </td>
    </tr>
    </table>


    <div>
        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnSiguiente" runat="server" Text="Siguiente >>" Width="132px" Height="51px" OnClick="btnSiguiente_Click" />
   </div>

</asp:Content>