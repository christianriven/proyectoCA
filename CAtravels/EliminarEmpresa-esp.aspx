<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarEmpresa-esp.aspx.cs" Inherits="CAtravels.EliminarEmpresa_esp" %>

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
	<title>Vuelos</title>
</head>
<body>






	<form id="form1" runat="server">

		<div class="container"> 
	<nav class="nav-main">
				<ul class="nav-menu">
				    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click" CssClass="white-text"  >Empresa Vuelos</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click" CssClass="white-text" >Empresa Turismo</asp:LinkButton>
                    </li>
					<li>
                        <asp:LinkButton ID="LBedit" runat="server" OnClick="LBedit_Click" CssClass="white-text" >EDITAR</asp:LinkButton>
                    </li>
					<li>
                        <asp:LinkButton ID="LBdelete" runat="server" OnClick="LBdelete_Click" CssClass="white-text" >BORRAR</asp:LinkButton>
                    </li>
				</ul>
         <ul class="nav-menu-right" >
			  <li >
				 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Cerrar Sesion</asp:LinkButton>
			  </li>
		  </ul>
	</nav>

                
    <div class="container">
		&nbsp;<div class="form__top">
		  <h1><span>CA</span></h1><h2>Empresa de Vuelos</h2>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
		</div>
	
			<p>Nombre de la empresa de vuelos</p>
			<asp:TextBox ID="Txtvempresa" runat="server" Height="24px" Width="238px"></asp:TextBox>
		<br />
		<p>ID de vuelo</p>
			<asp:TextBox ID="txtid" runat="server" Height="24px" Width="238px"></asp:TextBox>
&nbsp;<p>Pais de Salida del Vuelo</p>
			<asp:TextBox ID="Txtvsalida" runat="server" Height="49px" Width="417px"></asp:TextBox>
&nbsp;<br />
        <br />
        Pais de Llegada<br />
			<asp:TextBox ID="Txtvllegada" runat="server" Height="49px" Width="417px"></asp:TextBox>
        <br />
        Fecha de salida<br />
        <asp:TextBox ID="TxtSalida" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <br />
        Fecha de llegada<br />
        <asp:TextBox ID="Txtllegada" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;<p>Precio</p>
			<asp:TextBox ID="Txtprecio" runat="server" ></asp:TextBox>
        &nbsp;&nbsp;<p>Moneda:</p>
			<asp:TextBox ID="Txtmoneda" runat="server" ></asp:TextBox>
&nbsp;&nbsp;

</select><p>Teléfono </p>
			<asp:TextBox ID="Txttelefono" runat="server" Height="29px" Width="256px"></asp:TextBox>
&nbsp;<p>Correo electrónico</p>
			<asp:TextBox ID="Txtemail" runat="server" Height="29px" Width="256px"></asp:TextBox>
        <br />
&nbsp;<div class="btn__form">
            	&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="SELECCIONAR" CssClass="btn__reset" Height="25px" Width="293px" OnClick="Button1_Click" />
                &nbsp;&nbsp;<asp:Button ID="btnAgregar" runat="server" Height="25px" Text="ELIMINAR" Width="323px" CssClass="btn__submit" OnClick="btnAgregar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </div>
	</div>
            <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
		<AlternatingRowStyle BackColor="White" />
		 <Columns>
                    <asp:BoundField DataField="Id_Vempresa" HeaderText="ID" />
                    <asp:BoundField DataField="Nombre_Vempresa" HeaderText="Nombre de la Compañia" />
                    <asp:BoundField DataField="Pais_Salida" HeaderText="País de salida" />
                    <asp:BoundField DataField="Pais_llegada" HeaderText="País de llegada" />
                    <asp:BoundField DataField="Salida" HeaderText="Día de salida" />
                    <asp:BoundField DataField="Regreso" HeaderText="Día de llegada" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Moneda" HeaderText="Moneda" />
			        <asp:BoundField DataField="Telefono" HeaderText="Numero de telefono" />
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
            	</div>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            <br />
            <br />
    <br />
            
            <br />
            <br />         
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
    </form>

</body>
</html>
