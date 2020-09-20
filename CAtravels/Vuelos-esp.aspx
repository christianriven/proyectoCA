<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vuelos-esp.aspx.cs" Inherits="CAtravels.Vuelos_esp" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VUELOS</title>

    <!-- Bootstrap -->
<link href="css/mi-estilo.css" rel="stylesheet">
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="INDEX.html" rel="stylesheet">	  
  </head>
	
  <body>
    
	  <form id="form1" runat="server">
    
	  <div class="condtainer"> 
 

	
	<div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LBinicio_Click" >INICIO</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LBvuelos_Click">VUELOS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LBpaquetes_Click">PAQUETES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click">OFERTAS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">CERRAR SESION</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>
	
	
  <div class="row" id="fondo">
		<div class="col-4">
			<h2 style="font-size: 180%" align="center" id="titulos"> 
                Guatemala</h2>
            <p style="font-size: 180%" align="center"> 
                &nbsp;</p>
			&nbsp;<asp:ImageButton ID="ImageButton5" runat="server" Height="62%" ImageUrl="~/imagenes/1.png" Width="89%" OnClick="ImageButton5_Click1" />
			<br>
			<a href="">
				&nbsp;</a></div>
	  			<div class="col-4"> </a>
			<h2 style="font-size: 180%" align="center" id="titulos"> Honduras </h2>
			<br>
			    <a href="">
				&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="62%" ImageUrl="~/imagenes/L_5c1a36f633303_Honduras-turismo.jpg" Width="89%" OnClick="ImageButton1_Click1" />
                </a>
		</div>
			
			<div class="col-4"> </a>
			<h2 style="font-size: 180%" align="center" id="titulos"> El Salvador </h2>
			<br>
			    <a href="">
				&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="62%" ImageUrl="~/imagenes/7-rotado.jpg" Width="89%" OnClick="ImageButton2_Click1" />
                </a>
		</div>
		
	</div>
	
	
	<div class="row" id="fondo">
		
		<div class="col-6">
		
			<h2 style="font-size: 180%" align="center" id="titulos"> Costa Rica </h2>
			<br>
			<a href="">
				&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="62%" ImageUrl="~/imagenes/Costa-Rica.jpg" Width="89%" OnClick="ImageButton3_Click1" />
            </a>
		</div>
		<div class="col-6">
			
			<h2 style="font-size: 180%" align="center" id="titulos">Panamá</h2>
			<br>
			<a href="#">
				&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="62%" ImageUrl="~/imagenes/Que-hacer-en-Ciudad-de-Panamá-Conocer-lugares-y-destinos-turísticos-1-1.png" Width="89%" OnClick="ImageButton4_Click1" /></a>
		</div>
		
	
		</div>
		  
		<div class="col-16">
		<h1 style="font-size: 180%" align="center" id="titulos"> Turismo en Centro America</h1>
		<iframe id="video1" width="450" height="300" src="https://www.youtube.com/embed/kiUrluu6fZU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>  
	
	<script src="js/jquery.min.js"></script>	
    <script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
  
      </form>
	  
	  
  </body>
	
	
</html>
