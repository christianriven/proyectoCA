<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregarusuarios.aspx.cs" Inherits="CAtravels.agregarusuarios" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/reset.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" href="./css/main.css">
	<script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
	<title>Resgister</title>
    <style type="text/css">
        #Button1 {
        }
    </style>
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

	<div class="conatainer">
		<div class="form__top">
			<h1><span>CA TRAVELS</span></h1><h2><span>Register</span></h2>
		</div>
		<form id="form1" runat="server">
			<asp:Label ID="LUsername" runat="server" Text="User name:"></asp:Label>
            <br />
            <asp:TextBox ID="Txtusername" runat="server" cssClass="input" Width="433px" OnTextChanged="Txtusername_TextChanged" MaxLength="10"></asp:TextBox>
            <br />
			Name:<br />
			<asp:TextBox ID="TxtName" runat="server" cssClass="input" Width="433px"  required autofocus onpaste="return false" 
             onkeypress="return validar(event)" ></asp:TextBox>
			&nbsp;<br />
&nbsp;E-mail:<br />
			<asp:TextBox ID="TxtEmail" runat="server" cssClass="input" Width="433px"  required TextMode="Email"></asp:TextBox>
			<br />
			&nbsp;Telephone Number<br />
            <asp:TextBox ID="TxtCell" runat="server" cssClass="input" Width="433px"  required TextMode="Phone"  MaxLength="7" onkeypress="return NumCheck(event)"></asp:TextBox>
            <br />
            Password<br />
            <asp:TextBox ID="Txtcontra" runat="server" cssClass="input" Width="433px"  required TextMode="Password"></asp:TextBox>
			&nbsp;<br />
            Verify Password<br />
            <asp:TextBox ID="TxtVcontra" runat="server" cssClass="input" Width="433px"  required TextMode="Password"></asp:TextBox>
			&nbsp;
&nbsp;<div class="btn__form">
                <asp:Button ID="Button1" runat="server" Text="Add User" OnClick="Button1_Click" cssClass="btn__submit" Width="372px" Height="34px" />
				<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            	&nbsp;
	           
	           
			&nbsp;

	<br />
            </div>
			 
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
		</form>
	</div>

</body>
</html>
