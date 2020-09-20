<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paquetes1.aspx.cs" Inherits="CAtravels.Paquetes1" %>

 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PACKAGES</title>
    <!-- Bootstrap -->

    <link href="css/mi-estilo.css" rel="stylesheet">
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="HOME.html" rel="stylesheet">
	
  </head>
  <body>
  	  <form id="form1" runat="server">
  	<!-- body code goes here -->
  <div class="contfainer" id="fondo"> 
		  
  
      
	<div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LBinicio_Click" >HOME</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LBvuelos_Click">FLIGHTS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LBpaquetes_Click">PACKAGES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton2_Click">OFFERS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton5_Click">Log Out</asp:LinkButton>
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
          <p>The beatiful Guatemala Capital City, enjoy it with 3 companionsfor 3 days and 2 nights.</p>
        </div>
        <div class="card-action col-md-7" id="img2">
          <a href="GUATEMALA.html" id="masinfo" >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <asp:LinkButton ID="LBMantigua" runat="server" OnClick="LBMantigua_Click">More Information</asp:LinkButton>
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
          <p >This package includes 2 customizable trips around San Salvador, includes transport and 2 hotel options. enjoy this gorgeus landscapes with 2 companions for 4 days and 3 nights iones de hotel. </p>
        </div>
        <div class="card-action" id="img2.12" >
          <a href="PAQUETES-2.html" id="masinfo2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMsivar" runat="server" OnClick="LBMsivar_Click">More Information</asp:LinkButton>
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
          <p align="justify">This Package to Panama City allows you to explore a maximum of 4 special places with 3 meals paid at the hotel, the package will allow you 3 companions for 5 days and 4 nights.</p>
        </div>
        <div class="card-action" id="img4">
          <a href="" id="masinfo4"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LBMpanama" runat="server" OnClick="LBMpanama_Click">More Information</asp:LinkButton>
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
          <p align="justify">This luxurious package provides you with accommodation in Tegucigalpa and will bring you 6 meals at the hotel with transportation included to 5 places of your choice. Enjoy this colloquial state for 4 companions 6 days and 5 nights.</p>
        </div>
        <div class="card-action" id="img6">
          <a href="" id="masinfo6">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMhonduras" runat="server" OnClick="LBMhonduras_Click">More Information</asp:LinkButton>
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
          <p align="justify">The package that takes you straight to San Diego where you can enjoy modernism with 3 paid meals and tickets to 3 places of your choice. Enjoy this beautiful landscape with 4 companions for 3 days and 3 nights.</p>
        </div>
        <div class="card-action" id="img8">
          <a href="" id="masinfo8">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:LinkButton ID="LBMcosta" runat="server" OnClick="LBMcosta_Click">More Information</asp:LinkButton>
            &nbsp;</a>
        </div>
      </div>
    </div>			
	   
   </div>
  </div>
	  
	<ul class="pagination" id="numer">
  </ul>
	
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
	   


  
	   
	
  

	



