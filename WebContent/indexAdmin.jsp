<%@ page language="java" contentType="text/html;  charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Admin</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto sul tuo Pannello di Controllo</h1>
		<ul>
			<li><a href='<c:url value="/faces/newProduct.jsp" />'>Inserisci nuovo Prodotto</a></li>
			<li><h:form>
					<h:commandLink action="#{productController.listProducts}"
						value="Catalogo Prodotti" />
				</h:form></li>
			<li><a href='<c:url value="/faces/newCustomer.jsp" />'>Inserisci nuovo Cliente</a></li>
	  		<li><h:form>
					<h:commandLink action="#{customerController.listCustomers}"
						value="Anagrafica Clienti" />
				</h:form></li>
			<li><h:form>
					<h:commandLink action="#{addressController.listAddress}"
						value="Rubrica Indirizzi" />
				</h:form></li>
			<li><a href='<c:url value="/faces/findCustomer.jsp" />'>Verifica Credenziali</a></li>
		</ul>
	</f:view>
</body>
</html>