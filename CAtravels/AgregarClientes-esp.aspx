<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarClientes-esp.aspx.cs" Inherits="CAtravels.AgregarClientes_esp" %>

<<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/resettt.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" href="./css/main2.css">
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

	<div class="container">
		&nbsp;<div class="form__top">
			<h1><span>CA</span></h1><h2><span>Registro</span></h2>
		</div>
		<form id="form1" runat="server">
            Nombre de la Compañia :<br />
            <br />
            <asp:TextBox ID="txtNempresa" runat="server" cssClass="input"  Width="433px" onkeypress="return validar(event)"></asp:TextBox>
			<br />
			<br />
            Dirección de Correo Eléctronico:<br />
            <br />
			<asp:TextBox ID="txtEmailEmpresa" runat="server" cssClass="input" Width="433px" TextMode="Email" OnTextChanged="txtEmailEmpresa_TextChanged" ></asp:TextBox>
            <br />
            <br />
            Nombre de Representante:<br />
            <br />

            <asp:TextBox ID="txtrepresentante" runat="server" cssClass="input" Width="433px" onkeypress="return validar(event)" ></asp:TextBox>
            <br />
            <br />
            Correo de Representante:<br />
            <br />
            <asp:TextBox ID="txtEmailRepresentante" runat="server" cssClass="input" Width="433px" TextMode="Email"  ></asp:TextBox>

            <br />

            <br />
            Contraseña:<br />
            <br />
            <asp:TextBox ID="txtEcontra" runat="server" cssClass="input" Width="433px" placeholder="" TextMode="Password" ></asp:TextBox>
            <br />
            <br />
            Verificar Contraseña:<br />
            <br />
            <br />
            <asp:TextBox ID="txtEVcontra" runat="server" cssClass="input" Width="433px" TextMode="Password"></asp:TextBox>
            <br />
            <div class="btn__form">
            	&nbsp;<asp:Button ID="btnAgregar" runat="server" Text="Agregar" cssClass="btn__submit" OnClick="btnAgregar_Click" Height="33px" Width="448px" />
            	&nbsp;<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
		</form>
	</div>

</body>
</html>
