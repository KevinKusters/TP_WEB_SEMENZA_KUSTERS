<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegistroCompleto.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS.frmRegistroCompleto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<center>

    <table>
    <h1>¡Registro completado!<span class="badge badge-secondary"></span></h1> 
</table></center>

    <p></p>    

<center><table>

    <tr>
        <td>
                <div class="card" style="width: 18rem;">
                  <img src="ImagenRegitroCompleto/Globos.jpg" class="card-img-top img-fluid" alt="...">             
                </div>
        </td>
    </tr>

</table></center>  
    
<center><table>   
    <asp:Button CssClass="btn btn-primary btn-lg" ID="btnInicio" runat="server" Text="Volver al inicio" OnClick="btnAceptar_Click" Height="54px" Width="801px" />              
</table></center>     

</asp:Content>
