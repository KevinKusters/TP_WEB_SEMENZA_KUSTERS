<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">        
        <p class="h2">Ingresa tu codigo de voucher:</p>            
        <p class="lead"></p>                       
                <asp:TextBox ID="txbVoucher" runat="server" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Ingresa el codigo"></asp:TextBox>
             <p>
            </p>
        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnAceptar" runat="server" Text="Aceptar >>" OnClick="btnAceptar_Click" Height="34px" Width="185px" />               
    </div>

</asp:Content>
