<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CAtravels.Login" %>

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
      <script type="text/javascript">
         function validar(e) { // 1
             tecla = (document.all) ? e.keyCode : e.which; // 2
             if (tecla == 8) return true; // 3
             patron = /[A-Za-z\s]/; // 4
             te = String.fromCharCode(tecla); // 5
             return patron.test(te); // 6
         }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false

        }

    </script>
      <style type="text/css">
          #form1 {
              height: 314px;
          }
      </style>
      
  </head>
  <body>
      <form id="form1" runat="server">
          <div class="container"> 
          <nav class="nav-main">
				<ul class="nav-menu">
                    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click" CssClass="white-text" >ESP</asp:LinkButton>
                    </li>
          </ul>
	</nav>
              </div>
<div class="login-box">
  &nbsp;<h1>Log In <img class="avatar" src="img/logo.jpeg" alt="logo C.A."></h1>
    
    <label for="username">User Name<asp:TextBox ID="txtUname" runat="server" OnTextChanged="txtUname_TextChanged" ></asp:TextBox>
        </label>
    &nbsp;

        <label for="password">Password<asp:TextBox ID="txtLcontra" runat="server" TextMode="Password"></asp:TextBox>
        </label>
    &nbsp;
        &nbsp;
    <a href="#">
        <asp:Button ID="btnlogin" runat="server" Text="Log in" Height="29px" Width="251px" OnClick="btnlogin_Click" />
        </a>
        <br />
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click">Create an Account</asp:LinkButton>



        <br />
        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" OnClick="LinkButton2_Click" >Register an Enterprise</asp:LinkButton>

         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <br />
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="White" OnClick="LinkButton3_Click">Log in as Company</asp:LinkButton>
          </div>
    </form>

      

  </body>
</html>

