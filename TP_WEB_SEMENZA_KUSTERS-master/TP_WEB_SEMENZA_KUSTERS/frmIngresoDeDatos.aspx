<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmIngresoDeDatos.aspx.cs" Inherits="TP_WEB_SEMENZA_KUSTERS.frmIngresoDeDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    </p>
    <p>
        <label for="exampleInputEmail1">DNI:</label>
    </p>
    <p>
        <asp:TextBox ID="txtDni" runat="server" OnTextChanged="txtDni_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="txtDni" ErrorMessage="*Ingrese Valores Numericos"
            ForeColor="Red"
            ValidationExpression="^[0-9]*">
        </asp:RegularExpressionValidator>
    </p>
    <p>
        <label for="exampleInputEmail1">Nombre:</label>
    </p>
    <p>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    </p>
    <p>
        <label for="exampleInputEmail1">Apellido:</label>
    </p>
    <p>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
    </p>
    <p>
        <label for="exampleInputEmail1">Email:</label>
    </p>
    <p>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>

    <p>
    </p>

    <div>
        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnParticipar" runat="server" Text="Participar >>" Width="132px" Height="51px" OnClick="btnAceptar_Click" />
    </div>

</asp:Content>
