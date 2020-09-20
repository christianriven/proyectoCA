<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paquetes1-esp.aspx.cs" Inherits="CAtravels.Paquetes1_esp" %>


 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PAQUETES</title>
    <!-- Bootstrap -->

    <link href="css/mi-estilo.css" rel="stylesheet">
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="HOME.html" rel="stylesheet">
	
  </head>
  <body>
  	  <form id="form1" runat="server">
  	<!-- body code goes here -->
  <div class="containera" id="fondo"> 
		  
  
      
	 <div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LBinicio_Click" CssClass="white-text" >INICIO</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">VUELOS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LBpaquetes_Click" CssClass="white-text">PAQUETES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click" CssClass="white-text">OFERTAS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CssClass="white-text">CERRAR SESION</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>
	

   <div class="col-md-12">
					
    <h2 class="header" id="titulos" align="center">Antigua Guatemala</h2>
    <div class="card horizontal">
      <div class="card-image" id="img1" align="center">
        <img src="imagenes/guate-CATravels.png">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p>La bella y hermosa capital de Guatemala, disfrutela con 3 acompañantes 3 dias y 2 noches.</p>
        </div>
        <div class="card-action col-md-7" id="img2">
          <a href="GUATEMALA.html" id="masinfo" >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <asp:LinkButton ID="LBMantigua" runat="server" OnClick="LBMantigua_Click">Más información</asp:LinkButton>
&nbsp;</a>
        </div>
      </div>
    </div>	
	   
	   <h2 class="header" id="titulo2.1" align="center">El Salvador</h2>
    <div class="card horizontal">
      <div class="card-image2" id="img" align="center">
        <img src="imagenes/7-rotado.jpg">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p >El paquete incluye dos viajes personalizados hacia lugares de San Salvador, incluye transporte y dos opciones de hotel. Disfruta este hermozo paisaje con 2 acompañantes por 4 dias y 3 noches. </p>
        </div>
        <div class="card-action" id="img2.12" >
          <a href="PAQUETES-2.html" id="masinfo2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMsivar" runat="server" OnClick="LBMsivar_Click">Más información</asp:LinkButton>
            &nbsp; </a>&nbsp;
            
                                
        </div>
      </div>
    </div>			
	   
	   <h2 class="header" id="titulos3" align="center">Panamá</h2>
    <div class="card horizontal">
      <div class="card-image" id="img3">
        <img src="imagenes/Que-hacer-en-Ciudad-de-Panamá-Conocer-lugares-y-destinos-turísticos-1-1.png">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p align="justify">Este Paquete hacia la ciudad de Panama permite explorar un maximo de 4 lugares especiales con 3 comidas pagadas en el hotel, el paquete le permitira 3 acompañantes por 5 dias y 4 noches. </p>
        </div>
        <div class="card-action" id="img4">
          <a href="" id="masinfo4"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LBMpanama" runat="server" OnClick="LBMpanama_Click">Más información</asp:LinkButton>
&nbsp;&nbsp;</a>
        </div>
      </div>
    </div>		
	   
	   <h2 class="header" id="titulos5" align="center">Honduras</h2>
    <div class="card horizontal">
      <div class="card-image" id="img5" align="center">
        <img src="imagenes/yojoa-lake-honduras.jpg">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p align="justify">Este lujoso paquete le provee estadia en Tegucigalpa  y le traera 6 comidas en el hotel con transporte incluido a 5 lugares de su preferencia. Disfruta este coloquial estado para 4 acompañantes 6 dias y 5 noches.</p>
        </div>
        <div class="card-action" id="img6">
          <a href="" id="masinfo6">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMhonduras" runat="server" OnClick="LBMhonduras_Click">Más información</asp:LinkButton>
            &nbsp; &nbsp;</a>
        </div>
      </div>
    </div>	
	   
	   <h2 class="header" id="titulos7"  align="center">Costa Rica</h2>
    <div class="card horizontal">
      <div class="card-image" id="img7" align="center">
        <img src="imagenes/vuelos-san-jose_b1-san-jose_es.jpg">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p align="justify">El paquete que lo lleva directo a San Diego donde podra disfrutar de el modernismo con 3 comidas pagadas y entradas a 3 lugares a su eleccion. Disfruta este hermoso paisaje con 4 acompañantes por 3 dias y 3 noches.</p>
        </div>
        <div class="card-action" id="img8">
          <a href="" id="masinfo8">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMcosta" runat="server" OnClick="LBMcosta_Click">Más información</asp:LinkButton>
            &nbsp;</a>
        </div>
      </div>
    </div>			
	   
   </div>
  </div>
            <br>
            <br>
            <br>
	
    <div class="col-md-12">
	  <div class="card-image">
        
      </div>
    </div>		   
	
	 

	  

	  
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
      </form>
  </body>
</html>
