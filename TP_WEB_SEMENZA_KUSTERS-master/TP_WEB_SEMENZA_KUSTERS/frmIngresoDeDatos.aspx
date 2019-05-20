<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmIngresoDeDatos.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS.frmIngresoDeDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>      
          <asp:Label ID="lblDni" runat="server" Text="DNI:"></asp:Label>
    </p>
    <p> 
          <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
    </p>
    <p>    
          <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
    </p>
    <p>
         <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    </p>
    <p>
         <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
    </p>
    <p>
         <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
    </p>
    <p>
       <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>       
    </p>
    
    <div>
          <asp:Button CssClass="btn btn-primary btn-lg" ID="btnAceptar" runat="server" Text="Aceptar" Width="132px" Height="51px" OnClick="btnAceptar_Click" />
   </div>

</asp:Content>
