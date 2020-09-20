<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bvuelos.aspx.cs" Inherits="CAtravels.Bvuelos" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FLIHTS</title>
    <!-- Bootstrap -->
	<link href="../Plantilla Vuelos/css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/mi-estilo.css" rel="stylesheet">
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet"> 
  </head>
  <body>
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
  	<!-- body code goes here -->
<div class="contaianer"> 
	
	
	
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
	
	<div class="col-4 col-xl-12">
	  <h1 align="justify" id="encuentra" class="">Flight Configuration</h1>
  </div>
	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
  <p class="col-xl-10">Departure Date: <asp:TextBox ID="txt_dsalida" runat="server" Width="264px" TextMode="Date" ></asp:TextBox>
            </p>
  <p class="col-xl-10">Return Date: 
    <asp:TextBox ID="txt_Dregreso" runat="server" Width="264px" TextMode="Date" ></asp:TextBox>
            </p>
	    </div>
			
			
		<div class="col-md-8">
			<p>From: <asp:TextBox ID="Txt_desde" runat="server" Width="264px" onkeypress="return validar(event)"></asp:TextBox>
            </p>
			<p>Until: <asp:TextBox ID="txt_hasta" runat="server" Width="264px" onkeypress="return validar(event)"></asp:TextBox>
            </p>			
		</div>
	</div>
</div>
	
				<br>
				<br>
<p class="col-xl-12">Number of Adults: 
  <asp:TextBox ID="txtNadultos" runat="server" Width="264px"  MaxLength="2" onkeypress="return NumCheck(event)"></asp:TextBox>
    </p>

<p class="col-xl-12">Number Youth (3-14)
  <asp:TextBox ID="TxtAdolecentes" runat="server" Width="264px"  MaxLength="2" onkeypress="return NumCheck(event)"></asp:TextBox>
    </p>

<p class="col-xl-12">Number of Infant (0-2)<asp:TextBox ID="Txtniños" runat="server" Width="264px"  MaxLength="2" onkeypress="return NumCheck(event)"></asp:TextBox>
    <br> 
    </p>
	
	&nbsp;<asp:Button ID="Btn_buscar" runat="server" Height="47px" Text="Search" cssClass="waves-effect waves-light btn-large" OnClick="Btn_buscar_Click"/>
	 <br />
    <br />
    <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
		<AlternatingRowStyle BackColor="White" />
		 <Columns>
                    
                    <asp:BoundField DataField="Nombre_Vempresa" HeaderText="Company Name" />
                    <asp:BoundField DataField="Pais_Salida" HeaderText="Depurate Country" />
                    <asp:BoundField DataField="Pais_llegada" HeaderText="Country of arrival" />
                    <asp:BoundField DataField="Salida" HeaderText="Departure day" />
                    <asp:BoundField DataField="Regreso" HeaderText="Arrival Date" />
                    <asp:BoundField DataField="Precio" HeaderText="Price" />
			        <asp:BoundField DataField="Moneda" HeaderText="Currency" />       
                    <asp:BoundField DataField="Telefono" HeaderText="phone number" />
			        <asp:BoundField DataField="Email" HeaderText="Email" />
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
    <br />
    <br />
    <br />
    <br />
	 <br>
	  <br>
	  <br>
		  
	
  </div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="../Plantilla Vuelos/js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../Plantilla Vuelos/js/popper.min.js"></script> 
	<script src="../Plantilla Vuelos/js/bootstrap-4.4.1.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
      </form>
  </body>
</html>

