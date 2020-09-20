<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioEmpresa2-esp.aspx.cs" Inherits="CAtravels.InicioEmpresa2_esp" %>


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
	<title>Vuelos</title>
</head>
<body>






	<form id="form1" runat="server">

		<div class="container"> 
	<nav class="nav-main">
				<ul class="nav-menu">
				    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click">Empresa Vuelos</asp:LinkButton>
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
				 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ForeColor="Black">Log Out</asp:LinkButton>
			  </li>
		  </ul>
	</nav>

                
    <div class="container">
		&nbsp;<div class="form__top">
			<h1><span>Empresa de Vuelos</h2>
            <p>Este formulario esta dirigido solamente a Empresas de Vuelos si usted va a promocionar turismo dirijase a la barra de navegación en la parte superior que dice: &quot;Empresa Turismo&quot;</p>
            <p>&nbsp;</p>
		</div>
	
			<p>Nombre de la empresa de vuelos</p>
			<asp:TextBox ID="Txtvempresa" runat="server" Height="24px" Width="238px"></asp:TextBox>
&nbsp;<p>Pais de Salida del Vuelo</p>
			<asp:TextBox ID="Txtvsalida" runat="server" Height="49px" Width="417px"></asp:TextBox>
&nbsp;<br />
        <br />
        Pais de Llegada<br />
			<asp:TextBox ID="Txtvllegada" runat="server" Height="49px" Width="417px"></asp:TextBox>
&nbsp;&nbsp;<br />
        <br />
        Fecha de salida<br />
        <asp:TextBox ID="TxtSalida" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <br />
        Fecha de llegada<br />
        <asp:TextBox ID="Txtllegada" runat="server" TextMode="Date"></asp:TextBox>
        <p>Precio</p>
			<asp:TextBox ID="Txtprecio" runat="server"></asp:TextBox>
&nbsp;&nbsp;
		 <p>Moneda:</p>
			<asp:TextBox ID="Txtmoneda" runat="server"></asp:TextBox>
&nbsp;&nbsp;

</select><p>Teléfono </p>
			<asp:TextBox ID="Txttelefono" runat="server" Height="29px" Width="256px"></asp:TextBox>
&nbsp;<p>Correo electrónico</p>
			<asp:TextBox ID="Txtemail" runat="server" Height="29px" Width="256px"></asp:TextBox>
&nbsp;<div class="btn__form">
            	&nbsp;
                <asp:Button ID="btnAgregar" runat="server" Height="36px" Text="Agregar" Width="443px" CssClass="btn__submit" OnClick="btnAgregar_Click"/>
            </div>
	</div>
			</div>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>

</body>
</html>
