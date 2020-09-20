<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginEmpresa-esp.aspx.cs" Inherits="CAtravels.LoginEmpresa_esp" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>login</title>
    <link rel="stylesheet" href="css/master.css">
      <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
      
  </head>
  <body>
<div class="login-box">
  &nbsp;<h1>Ingresar como Administrador<img class="avatar" src="img/logo.jpeg" alt="logo C.A."></h1>
    <form id="form1" runat="server">
    <label for="username">Nombre de la Compañia <asp:TextBox ID="txtAname" runat="server" OnTextChanged="txtAname_TextChanged"></asp:TextBox>
        </label>
    &nbsp;

        <label for="password">Contraseña<asp:TextBox ID="txtLcontra" runat="server" TextMode="Password"></asp:TextBox>
        </label>
    &nbsp;
        &nbsp;
    <a href="#">
        <asp:Button ID="btnlAogin" runat="server" Text="Ingresar" Height="29px" Width="251px" OnClick="btnlogin_Click" />
        </a>
        <br />
    &nbsp;<br />
        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" OnClick="LinkButton2_Click" >Registrar Compañia</asp:LinkButton>

         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>
  </div>
      

  </body>
</html>
