<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="CAtravels.inicio" %>

<!DOCTYPE html>

<html lang="es">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CA TRAVELS</title>
    <!-- Bootstrap -->

    <link href="css/mi-estilo.css" rel="stylesheet">
	  
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="VUELOS.html" rel="stylesheet">
	   <link href="PAQUETES.html" rel="stylesheet">
	   <link href="PAQUETES-2.html" rel="stylesheet">
	   <link href="HOME.html" rel="stylesheet">
	   <link rel="stylesheet" href="css/css.css">
	   

	
  </head>


<body>
	
    <form id="form1" runat="server">
	
<div class="container" id="fondo">
	 <nav class="nav-main" >
		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LBinicio_Click" CssClass="white-text" >HOME</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">FLIGHTS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LBpaquetes_Click" EnableTheming="True" CssClass="white-text">PACKAGES</asp:LinkButton></li>
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
  </nav>
	
  <div class="col-5"> 
	<img class="tp-kbimg" src="imagenes/BANNER 1.png" style="position: absolute; height: 327px; width: 971px; transform: translate3d(-30px, 0px, 0px) scale(1.1, 1.1); transform-origin: 0% 0% 0px; top: 147px; left: 80px;"></div>
		<!-- LAYERS -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br />
    <br />
    <br />
    <br />
    <br />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="col-10">
	<br>
	<h1 id="vuelos"> Flights with Discount</h1>
		
	</div>
	
	<div class="col-10">
	<h1 align="center" id="pregunta">Are you searching for cheap flights from El Salvador or promotions for your Vacations?</h1>
		
	</div>
	
	<div class="col-12">
	<h1   align="justify" id="encuentra">Find a wide number of flight ticket offers for your favorite destiny. CATravels offer to you packages that includes transports, and recreation to reduce the total cost. Flights to Costa Rica, Honduras, Panama, El Salvador and Guatemala, here you can find Airline Promotions to these destinies.</h1>
		
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="imagenes/L_5c1a36f633303_Honduras-turismo.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								&nbsp;<asp:LinkButton ID="LBguate" runat="server" ForeColor="Black">GUATEMALA</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
						  </h5>
							<p class="card-text">
								Antigua Guatemala &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $67
								 Tikal  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; $98
									 Pacaya  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; $54
							</p>
							
					  </div>
				  </div>
				</div>
				<div class="col-md-4">
					<div class="card">
					  <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="imagenes/7-rotado.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								&nbsp;<asp:LinkButton ID="LBesa" runat="server" ForeColor="Black">El Salvador</asp:LinkButton>
							</h5>
							<p class="card-text">
								Known as the &quot;short distances country&quot;<span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">, El Salvador allows the tourist eat the breakfast on the beach, take the lunch in the city and have a delicious dinner on the mountains, all in one day. An ideal destiny to enjoy a really memorable vacations, CATravels offers your everything you need with the El Salvador Package.</span></p>
							
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
					  <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="imagenes/guate.png" />
						<div class="card-block">
							<h5 class="card-title">
								<asp:LinkButton ID="Lbguatemala2" runat="server" ForeColor="Black">Guatemala</asp:LinkButton>
							</h5>
							<p class="card-text">
								<b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Guatemala</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>
									it is surounded by the Atlantic Ocean and the Pacific Ocean, </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Guatemala</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;it 
                                is maybe de country with the highest volcanic concetration of all America. This magnificent country has more than 30, where Tajumulco, with 4.220 mts, being the highest of the country.</span></span></p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
        <h1 align="center" id="pregunta">Touristics packages at the best price </h1>
	</div>
	
		<div class="col-12">
	<h1   align="justify" id="encuentra">In CATravels travel agency you can find the best offer of tourist packages. You can choose travel packages to a wide variety of destinations, we are your gateway to experience the best vacations. Our economic tourist packages have the best combination of flights and transfers at the cheapest price so that you can fully enjoy your holidays with family, friends, as a couple or whoever you want. Live every corner of the world with CATravels travel agency</h1>
		
	</div>

	</div>
	

    </form>

</body>
</html>
