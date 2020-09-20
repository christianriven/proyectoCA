<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicioEmpresa.aspx.cs" Inherits="CAtravels.inicioEmpresa" %>

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


	<title>Resgister</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Administrator Home</title>
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
	<nav class="nav-main">
				<ul class="nav-menu">
                    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click">Airline Flight Company</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click">Tourism Company</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">EDIT</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">DELETE</asp:LinkButton>
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
			<h1><span>CA</span></h1><h2>Transport Enterprise</h2>
            <p>This form is directed only to tourism businesses, if you are going to promote flights go to the navbar at the top that says:&quot;Airline Flight Company&quot;</p>
            <p>&nbsp;</p>
		</div>

			<p>Company Name</p>
            <p>
                <asp:TextBox ID="TxtEname" runat="server" cssCLaa="input"></asp:TextBox>
            </p>
			<p>Company Location</p>
            <p>
                <asp:TextBox ID="TxtUempresa" runat="server" Height="21px" Width="138px"></asp:TextBox>
            </p>
            
        <p>Price: </p>
            <p>
                <asp:TextBox ID="TxtDempresa" runat="server" Height="20px" Width="181px" ></asp:TextBox>
            </p>
        &nbsp;<p>Currency: </p>
			&nbsp;<asp:TextBox ID="Txtmoneda" runat="server"></asp:TextBox>
			&nbsp;<p>Package to be offer: </p>
            <p>
                <asp:TextBox ID="TxtPempresa" runat="server"  Height="119px" TextMode="MultiLine"  Width="434px"></asp:TextBox>
            </p>
			&nbsp;<p>Contact Phone Number:</p>
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
                <asp:Button ID="Btnadd" runat="server" Text="Add" cssClass="btn__submit" Width="255px" OnClick="Btnadd_Click" />
            </div>
        	</div>
   </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
		</form>

</body>
</html>
