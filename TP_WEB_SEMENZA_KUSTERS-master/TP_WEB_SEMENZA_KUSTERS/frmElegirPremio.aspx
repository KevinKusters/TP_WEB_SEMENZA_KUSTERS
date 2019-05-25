<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmElegirPremio.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS.frmElegirPremio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
    <tr>
        <td>
            <div class="card" style="width: 18rem;">
              <img src="ImagenesProductos/PS4.jpg" class="card-img-top img-fluid" alt="...">
              <div class="card-body">
                <h5 class="card-title">Joystick de PS4</h5>
                <asp:Button ID="btnPS4" runat="server" Text="Seleccionar" OnClick="btnPS4_Click" />
              </div>
            </div>
        </td>
        <td>
            <div class="card" style="width: 18rem;">
              <img src="ImagenesProductos/Xbox.jpg" class="card-img-top img-fluid" alt="...">
              <div class="card-body">
                <h5 class="card-title">Joystick de Xbox One</h5>
                <asp:Button ID="btnXbox" runat="server" Text="Seleccionar" OnClick="btnXbox_Click" />  
              </div>
            </div>
        </td>
        <td>
            <div class="card" style="width: 18rem;">
              <img src="ImagenesProductos/Stadia.jpg" class="card-img-top img-fluid" alt="...">
              <div class="card-body">
                <h5 class="card-title">Joystick de Stadia</h5>
                <asp:Button ID="btnStadia" runat="server" Text="Seleccionar" OnClick="btnStadia_Click" />
              </div>
            </div>
        </td>
    </tr>
    </table>

</asp:Content>