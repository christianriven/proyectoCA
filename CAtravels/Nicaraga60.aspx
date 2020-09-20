<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nicaraga60.aspx.cs" Inherits="CAtravels.Nicaraga60" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NICARAGUA</title>
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


	  <div class="conftainer" id="fondo">
	
	
      
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

		  <table width="1631" border="0" cellpadding="0" cellspacing="10">
  <tbody>
    <tr>
      <td width="1302" align="center"><strong style="color: #000000">You have selected a flight to Nicaragua
        <br>
        With a 60% of discount.</strong></td>
    </tr>
    <tr>
      <td align="center"><p style="color: #000000">This Includes:</p>
        <p><strong><em>-Options/Sugestions about: </em></strong></p>
        <p><strong><em>Alimentation and Recreation</em></strong></p>
      <p style="color: #FFC600">&nbsp;</p></td>
    </tr>
  </tbody>
</table>

		   <img src="imagenes/nica.jpg" alt="Flowers in Chania" width="670" height="400">
      <img src="imagenes/Nicaragua-Managua.jpg" alt="Flowers in Chania" width="670" height="400">
          <br>
          <br>
		  <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
      function initPayPalButton() {
          paypal.Buttons({
              style: {
                  shape: 'rect',
                  color: 'gold',
                  layout: 'vertical',
                  label: 'paypal',

              },

              createOrder: function (data, actions) {
                  return actions.order.create({
                      purchase_units: [{ "description": "vuelo", "amount": { "currency_code": "USD", "value": 10 } }]
                  });
              },

              onApprove: function (data, actions) {
                  return actions.order.capture().then(function (details) {
                      alert('Transaction completed by ' + details.payer.name.given_name + '!');
                  });
              },

              onError: function (err) {
                  console.log(err);
              }
          }).render('#paypal-button-container');
      }
      initPayPalButton();
  </script>

		  </div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
      </form>
  </body>
</html>
