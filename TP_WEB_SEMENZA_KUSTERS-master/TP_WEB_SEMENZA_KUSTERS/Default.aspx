<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">        
        <p class="h1">Ingresa tu codigo de voucher</p>            
        <p class="lead">  
            <p>
            </p>
            <input type="email" class="form-control" id="txxVoucher" aria-describedby="emailHelp" placeholder="Ingresa el codigo">
             <p>
            </p>
        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnAceptar" runat="server" Text="Aceptar >>" OnClick="btnAceptar_Click" Height="54px" Width="185px" />
        </p>        
    </div>

</asp:Content>
