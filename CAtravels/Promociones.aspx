<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="CAtravels.Promociones" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PROMOTIONS</title>
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
  <body onLoad="MM_preloadImages('botones/cr45a.png','botones/n70a.png','botones/es60a.png')">
  	  <form id="form1" runat="server">
  	<!-- body code goes here -->
			

	  <div class="contaainer" id="fondo">
	
	<div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LBinicio_Click" CssClass="white-text" >HOME</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">FLIGHTS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LBpaquetes_Click" CssClass="white-text">PACKAGES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton2_Click" CssClass="white-text">OFFERS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton5_Click" CssClass="white-text">Log Out</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>
      
 
 <table width="1280" height="650" border="0" cellpadding="0" cellspacing="5">
  <tbody>
    <tr>
      <td height="131" colspan="3"><img src="Logo.png" width="204" height="185" alt=""/><img src="botones/offers.png" width="1066" height="192" alt=""/></td>
    </tr>
    <tr>
      <td height="49" colspan="3" align="center" valign="top"><strong style="color: #000000">Available Promotions this Month:</strong></td>
    </tr>
    <tr>
      <td width="474" height="97" align="center" valign="top"><a href="honduras45.html" target="_self" onMouseOver="MM_swapImage('45','','botones/cr45a.png',1)" onMouseOut="MM_swapImgRestore()"><br>
      </a>
          <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/botones/45%,eng.png" Width="300px" OnClick="ImageButton1_Click" />
        </td>
      <td width="422" height="97" align="center" valign="top">
          <asp:ImageButton ID="ImageButton2" runat="server" Height="62px" ImageUrl="~/botones/70%-eng.png" Width="274px" OnClick="ImageButton2_Click" />
        </td>
      <td width="366" height="97" align="center" valign="top">
          <asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageUrl="~/botones/60%-eng.png" Width="246px" OnClick="ImageButton3_Click" />
        </td>
    </tr>
    <tr>
      <td height="153" align="center" valign="top"><p><em><strong>Honduras</strong></em></p>
        <p><em><strong>INCLUDES:<br>
          -Flight Exclusivity.<br>
      -Various Hosting Options.</strong></em></p></td>
      <td height="153" align="center" valign="top"><p><strong><em>Costa Rica<br>
        INCLUDES:</em></strong></p>
        <p><em><strong>-Optional Touristic Guides </strong><strong></strong></em></p></td>
      <td height="153" align="center" valign="top"><p><em><strong>Nicaragua</strong></em></p>
      <p><strong><em>INCLUDES:</em></strong></p>
      <p><strong><em>-Sugestions/Options Recreation </em></strong></p>
      <p><strong><em>Recreation & Alimentation.</em></strong><em></em></p></td>
    </tr>
    <tr>
      <td height="129" colspan="3">&nbsp;</td>
    </tr>
  </tbody>
</table>
	  

		  </div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
      </form>
  </body>
</html>
