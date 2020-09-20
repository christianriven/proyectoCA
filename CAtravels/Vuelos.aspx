<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vuelos.aspx.cs" Inherits="CAtravels.Vuelos" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FLIGHTS</title>

    <!-- Bootstrap -->
<link href="css/mi-estilo.css" rel="stylesheet">
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="INDEX.html" rel="stylesheet">	 
	  <style>
div {text-align: center;}
</style>
  </head>
	
  <body>
    
	  <form id="form1" runat="server">
    
	  <div class="condtainer"> 
		  </div>
 
		
	
	<div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LBinicio_Click" CssClass="white-text" >HOME</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">FLIGHTS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LBpaquetes_Click" CssClass="white-text">PACKAGES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click" CssClass="white-text">OFFERS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CssClass="white-text">Log Out</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>
  <div class="row" id="fondo">
		<div class="col-4">
			<h2 style="font-size: 180%" align="center" id="titulos"> Guatemala </h2>
			<br>
			
				<asp:ImageButton ID="ImageButton1" runat="server" Height="20%" ImageUrl="~/imagenes/1.png" Width="80%" OnClick="ImageButton1_Click" />
         
	
		</div>
		<div class="col-4">
			<h2 style="font-size: 180%" align="center" id="titulos"> Honduras </h2>
			<br>
			<asp:ImageButton ID="ImageButton2" runat="server" Height="20%" ImageUrl="~/imagenes/dt.common.streams.StreamServer.jpg" Width="80%" OnClick="ImageButton2_Click1" />
		</div>
			
			<div class="col-4"> 
			<h2 style="font-size: 180%" align="center" id="titulos"> El Salvador </h2>
			<br>
			    
				<asp:ImageButton ID="ImageButton3" runat="server" Height="20%" ImageUrl="~/imagenes/7-rotado.jpg" Width="80%" OnClick="ImageButton3_Click" />
                
		</div>
		
	</div>
	
	
	<div class="row" id="fondo">
		
		<div class="col-6">
		
			<h2 style="font-size: 180%" align="center" id="titulos"> Costa Rica </h2>
			<br>
			
				<asp:ImageButton ID="ImageButton4" runat="server" Height="20%" ImageUrl="~/imagenes/Costa-Rica.jpg" Width="80%" OnClick="ImageButton4_Click" />
		</div>
		<div class="col-6">
			
			<h2 style="font-size: 180%" align="center" id="titulos"> Panama </h2>
			<br>
			
				<asp:ImageButton ID="ImageButton5" runat="server" Height="20%" ImageUrl="~/imagenes/Que-hacer-en-Ciudad-de-Panamá-Conocer-lugares-y-destinos-turísticos-1-1.png" Width="80%" OnClick="ImageButton5_Click" /> </a>
		</div>
		
		
	
		
	</div>
		
		
	
	<script src="js/jquery.min.js"></script>	
    <script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
  
      </form>
	  
	  
  </body>
	
	
</html>
