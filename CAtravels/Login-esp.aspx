<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login-esp.aspx.cs" Inherits="CAtravels.Login_esp" %>

<!DOCTYPE html>


<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>login</title>
    <link rel="stylesheet" href="css/master.css">
      <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
      
    <link href="css/mi-estilo1.css" rel="stylesheet">  
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
      	<link href="css/materialize.css" rel="stylesheet">
      <style type="text/css">
          #form1 {
              height: 314px;
          }
      </style>
      
  </head>
  <body>
            <form id="form1" runat="server">

                <div class="container" > 
	               <nav class="nav-main"id="color-barra">
				<ul class="nav-menu" >
				    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click" CssClass="white-text"  >ENG</asp:LinkButton>
                    </li>
				</ul>
	</nav>
</div>



<div class="login-box">
  &nbsp;<h1> <img class="avatar" src="img/logo.jpeg" alt="logo C.A."></h1>
    
    <label for="username">Nombre de usuarios<asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
        </label>
    &nbsp;

        <label for="password">Contraseña<asp:TextBox ID="txtLcontra" runat="server" TextMode="Password"></asp:TextBox>
        </label>
    &nbsp;
        &nbsp;
    <a href="#">
        <asp:Button ID="btnloginESP" runat="server" Text="Ingresar" Height="29px" Width="251px" OnClick="btnloginESP_Click"  />
        </a>
        <br />
    &nbsp;<asp:LinkButton ID="LB_crearcuenta" runat="server" ForeColor="White" OnClick="LB_crearcuenta_Click" >Crear una cuenta</asp:LinkButton>



        <br />
        &nbsp;<asp:LinkButton ID="LB_ingresarcompañia" runat="server" ForeColor="White" OnClick="LB_ingresarcompañia_Click"  >Registrar Compañia</asp:LinkButton>

         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <br />

        &nbsp;<asp:LinkButton ID="LB_ingresarempresa" runat="server" ForeColor="White" OnClick="LB_ingresarempresa_Click" >Ingresar como compañia</asp:LinkButton>
          </div>
    </form>

      

  </body>
</html>
