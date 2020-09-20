<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicioEmpresa-esp.aspx.cs" Inherits="CAtravels.inicioEmpresa_esp" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/reset.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" href="./css/main.css">
    <link href="css/materialize.css" rel="stylesheet">
    <link href="css/mi-estilo.css" rel="stylesheet">
       <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>


	<title>Resgistro</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inicio Administrador</title>
    <!-- Bootstrap -->
	<link href="css/mi-estilo.css" rel="stylesheet" type="text/css">
  </head>
  <body>
  	<!-- body code goes here -->
 

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.1.js"></script>
  </body>
</html>
	
    


    
		<form id="form1" runat="server">

            <div class="container"> 
	<nav class="nav-main" >
				<ul class="nav-menu">
                    <li><asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click">Empresa Vuelos</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click">Empresa Turismo</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBedit" runat="server" OnClick="LBedit_Click" >EDITAR</asp:LinkButton>
                    </li>
					<li>
                        <asp:LinkButton ID="LBdelete" runat="server" OnClick="LBdelete_Click" >BORRAR</asp:LinkButton>
                    </li>
				</ul>
                 <ul class="nav-menu-right" >
			  <li >
				 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ForeColor="Black">Cerrar Sesion</asp:LinkButton>
			  </li>
		  </ul>
	</nav>

                
    <div class="container">
		&nbsp;<div class="form__top">
			<h1><span>CA</span></h1><h2>Empresa de Transporte</h2>
            <p>Este formulario esta dirigido solamente a negocios de Turismo, si usted va a promocionar vuelos dirijase a la barra de navegación en la parte superior que dice: &quot;Empresa Vuelos&quot;</p>
            <p>&nbsp;</p>
		</div>

			<p>Nombre de la Compañía </p>
            <p>
                <asp:TextBox ID="TxtEname" runat="server" cssCLaa="input"></asp:TextBox>
            </p>
			<p>Localizacion de la Compañía</p>
            <p>
                <asp:TextBox ID="TxtUempresa" runat="server" Height="28px" Width="138px"></asp:TextBox>
            </p>
			
			&nbsp;<p>Paquete a Ofrecer:</p>
            <p>
                <asp:TextBox ID="TxtPempresa" runat="server"  Height="119px" TextMode="MultiLine"  Width="434px"></asp:TextBox>
            </p>
        &nbsp;<p>Moneda:<asp:ListBox ID="ListBox4" runat="server"></asp:ListBox>
            <asp:ListBox ID="ListBox5" runat="server"></asp:ListBox>
        <p>
            <asp:TextBox ID="Txtmoneda" runat="server" Width="214px"></asp:TextBox>
        <p>Precio:</p>
            <p>
                <asp:TextBox ID="TxtDempresa" runat="server" Height="26px" Width="222px" OnTextChanged="TxtDempresa_TextChanged"></asp:TextBox>
            </p>
			&nbsp;<p>Teléfono de Contacto:</p>
            <p>
                <asp:TextBox ID="TxtTempresa" runat="server" Height="25px" Width="143px"></asp:TextBox>
            </p>
			&nbsp;<p>E-mail</p>
            <p>
                <asp:TextBox ID="TxtEempresa" runat="server" Height="29px" Width="141px"></asp:TextBox>
            </p>
			&nbsp;


            <div class="btn__form">
            	&nbsp;
                <asp:Button ID="Btnadd" runat="server" Text="Agregar" cssClass="btn__submit" Width="255px" OnClick="Btnadd_Click" />
            </div>

    </div>
 </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
		</form>
	

</body>
</html>