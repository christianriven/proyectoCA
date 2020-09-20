<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarTurismo-esp.aspx.cs" Inherits="CAtravels.EditarTurismo_esp" %>

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

	<title>Resgistro</title>
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
	
    


    
		<form id="form1" runat="server">

            <div class="container"> 
	<nav class="nav-main">
				<ul class="nav-menu">
                    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click" CssClass="white-text">Empresa Vuelos</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click" CssClass="white-text">Empresa Turismo</asp:LinkButton>
                    </li>
				    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="white-text">EDITAR</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="white-text">BORRAR</asp:LinkButton>
                    </li>
				</ul>
                   <ul class="nav-menu-right" >
			  <li >
				 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ForeColor="Black">Cerrar Sesion</asp:LinkButton>
			  </li>
		  </ul>
	</nav>

                
    <div class="container">
		&nbsp;<div class="form__top">
			<h1><span>CA</span></h1><h2>Empresa de Transporte</h2>
            <p>Este formulario esta dirigido solamente a negocios de Turismo, si usted va a promocionar vuelos dirijase a la barra de navegación en la parte superior que dice: &quot;Empresa Vuelos&quot;</p>
            <p>&nbsp;</p>
		</div>

			<p>Nombre de la Compañía </p>
            <p>
                <asp:TextBox ID="TxtEname" runat="server" cssCLaa="input" onkeypress="return validar(event)"></asp:TextBox>
            &nbsp;</p>
			<p>ID de la Compañia </p>
            <p>
                <asp:TextBox ID="txtid" runat="server" cssCLaa="input"></asp:TextBox>
            &nbsp;</p>
			<p>Localizacion de la Compañía</p>
            <p>
                <asp:TextBox ID="TxtUempresa" runat="server" Height="28px" Width="138px" onkeypress="return validar(event)"></asp:TextBox>
            </p>
			&nbsp;<p>Precio:</p>
            <p>
                <asp:TextBox ID="TxtDempresa" runat="server" Height="16px" Width="337px"  MaxLength="4" onkeypress="return NumCheck(event)"></asp:TextBox>
            </p>
            &nbsp;<p>Moneda:</p>
            <p>
                <asp:TextBox ID="Txtmoneda" runat="server" Height="16px" Width="337px" ></asp:TextBox>
            </p>
			&nbsp;<p>Paquete a Ofrecer:</p>
            <p>
                <asp:TextBox ID="TxtPempresa" runat="server"  Height="119px" TextMode="MultiLine"  Width="434px"></asp:TextBox>
            </p>
			&nbsp;<p>Teléfono de Contacto:</p>
            <p>
                <asp:TextBox ID="TxtTempresa" runat="server" Height="25px" Width="143px" MaxLength="7" onkeypress="return NumCheck(event)"></asp:TextBox>
            </p>
			&nbsp;<p>E-mail</p>
            <p>
                <asp:TextBox ID="TxtEempresa" runat="server" Height="29px" Width="141px"></asp:TextBox>
            </p>
			&nbsp;


            <div class="btn__form">
            	&nbsp;<asp:Button ID="Button1" runat="server" Text="Seleccionar" cssClass="btn__reset" Height="34px" OnClick="Button1_Click" Width="261px"/>
&nbsp;<asp:Button ID="Btnadd" runat="server" Text="Editar" cssClass="btn__submit" Width="289px" OnClick="Btnadd_Click" Height="37px" />
            </div>
        </div>
                <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
		<AlternatingRowStyle BackColor="White" />
		 <Columns>
                    <asp:BoundField DataField="Id_empresa" HeaderText="ID" />
                    <asp:BoundField DataField="Nombre_empresa" HeaderText="Nombre de la Compañia" />
                    <asp:BoundField DataField="Ubicacion_Empresa" HeaderText="Ubicacion" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Moneda" HeaderText="Moneda" />
                    <asp:BoundField DataField="Promocion_mes" HeaderText="Promocion" />
                    <asp:BoundField DataField="Telefono_contacto" HeaderText="Telefono" />
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
                </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            
            <br />
            <br />
		</form>
	</div>

</body>
</html>
