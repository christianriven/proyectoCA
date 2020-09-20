<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarTurismo.aspx.cs" Inherits="CAtravels.EditarTurismo" %>

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


	<title>Transport</title>
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
	
    <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false

        }

    </script>


    
		<form id="form1" runat="server">

            <div class="container"> 
	<nav class="nav-main">
				<ul class="nav-menu">
                    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">Airline Flight Company</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click" CssClass="white-text">Tourism Company</asp:LinkButton>
                    </li>
				    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="white-text">EDIT</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="white-text">DELETE</asp:LinkButton>
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
                <asp:TextBox ID="TxtEname" runat="server" cssCLaa="input"  onkeypress="return validar(event)"></asp:TextBox>
            </p>
        <p>Company ID</p>
            <p>
                <asp:TextBox ID="txtid" runat="server" cssCLaa="input"></asp:TextBox>
            </p>
			<p>Company Location</p>
            <p>
                <asp:TextBox ID="TxtUempresa" runat="server" Height="28px" Width="138px"  onkeypress="return validar(event)"></asp:TextBox>
            </p>
			&nbsp;<p>Price: </p>
            <p>
                <asp:TextBox ID="Txtprecio" runat="server" Height="16px" Width="370px" MaxLength="4" onkeypress="return NumCheck(event)" ></asp:TextBox>
            </p>
            &nbsp;<p>Currency: </p>
            <p>
                <asp:TextBox ID="Txtmoneda" runat="server" Height="21px" Width="370px"   onkeypress="return validar(event)"></asp:TextBox>
            </p>
			&nbsp;<p>Package to be offer: </p>
            <p>
                <asp:TextBox ID="TxtPempresa" runat="server"  Height="119px" TextMode="MultiLine"  Width="434px"></asp:TextBox>
            </p>
			&nbsp;<p>Contact Phone Number:</p>
            <p>
                <asp:TextBox ID="TxtTempresa" runat="server" Height="25px" Width="143px" MaxLength="4" onkeypress="return NumCheck(event)"></asp:TextBox>
            </p>
			&nbsp;<p>E-mail</p>
            <p>
                <asp:TextBox ID="TxtEempresa" runat="server" Height="29px" Width="141px"></asp:TextBox>
            </p>
			&nbsp;&nbsp;

            <div class="btn__form">
            	&nbsp;<asp:Button ID="Button1" runat="server" Text="SELECT" cssClass="btn__reset" Height="34px" OnClick="Button1_Click" Width="261px"/>
&nbsp;<asp:Button ID="Btnadd" runat="server" Text="EDIT" cssClass="btn__submit" Width="289px" OnClick="Btnadd_Click" Height="37px" />
            </div>
        	</div>
    	</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

    <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
		<AlternatingRowStyle BackColor="White" />
		 <Columns>
                    
                    <asp:BoundField DataField="Id_empresa" HeaderText="ID" />
                    <asp:BoundField DataField="Nombre_empresa" HeaderText="Name" />
                    <asp:BoundField DataField="Ubicacion_empresa" HeaderText="Location" />
                    <asp:BoundField DataField="Promocion_mes" HeaderText="Package" />
			        <asp:BoundField DataField="Precio" HeaderText="Price" />
                    <asp:BoundField DataField="Moneda" HeaderText="Currency" />
                    <asp:BoundField DataField="Telefono_contacto" HeaderText="Phone Number" />                   
			        <asp:BoundField DataField="Email_contacto" HeaderText="Email" />
         </Columns>
		 <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            <br />
            <br />
		</form>

</body>
</html>
