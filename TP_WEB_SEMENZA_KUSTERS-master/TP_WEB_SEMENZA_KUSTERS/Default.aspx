<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Ingresa tu codigo de voucher </h1>
        <p class="lead">
            <asp:TextBox ID="txxVoucher" runat="server" Width="1503px" Height="21px"></asp:TextBox>
        </p>        
        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnAceptar" runat="server" Text="Aceptar>>" OnClick="btnAceptar_Click" Height="54px" Width="185px" />
    </div>

</asp:Content>
