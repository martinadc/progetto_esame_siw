<%@ page language="java" contentType="text/html;  charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Index Admin</title>
</head>
<body>
	<f:view>
		<h1  align="center">${loginController.admin.name}, Benvenuto sul tuo Pannello di Controllo</h1>
		
			<div id="indexAdmin" align="center"><a href='<c:url value="/faces/newProduct.jsp" />'>Inserisci nuovo Prodotto</a></div>
			<div id="indexAdmin" align="center"><h:form>
					<h:commandLink action="#{productController.listProducts}"
						value="Catalogo Prodotti" />
				</h:form>
				</div>
			<div id="indexAdmin" align="center"><a href='<c:url value="/faces/newCustomer.jsp" />'>Inserisci nuovo Cliente</a></div>
	  		<div id="indexAdmin" align="center">
	  		<h:form>
					<h:commandLink action="#{customerController.listCustomers}"
						value="Anagrafica Clienti" />
				</h:form>
				</div>
				<div id="indexAdmin" align="center">
			<h:form>
					<h:commandLink action="#{addressController.listAddress}"
						value="Rubrica Indirizzi" />
				</h:form>
				</div >
				<div id="indexAdmin" align="center">
			<a href='<c:url value="/faces/find.jsp" />'>Verifica Credenziali</a></div>
			<div id="indexAdmin" align="center">
			<h:form>
					<h:commandLink action="#{orderController.listOrders}"
						value="Elenco totale degli Ordini" />
				</h:form>
			</div>
			
			<div id="indexAdmin" align="center">
			<h:form>
					<h:commandLink action="#{orderController.listCloseOrders}"
						value="Evasione Ordine" />
				</h:form>
				</div>
		<h:form>
		<br>
		<br>
		<div id="logOut" align="center">
			<h:commandButton value="Logout"  action="#{loginController.tornaAllaHomepage}"/>
		</h:form>
		</div>
	</f:view>
</body>
</html>