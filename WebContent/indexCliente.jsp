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
<title>index Cliente</title>
</head>
<body>
	<f:view>

		<h1 align="center">Ciao ${loginController.customer.name} !</h1>
		<h1 align="center">Benvenuto su MovieLand.it</h1>

		
		
				<div id="indexCliente" align="center"><h:form>
						<h:commandLink action="#{productController.listProductsCustomer}"
							value="Catalogo Prodotti" />
					</h:form>
					</div>
			<div id="indexCliente" align="center">	<h:form>
						<h:commandLink action="#{orderController.createOrder}"
							value="Crea Nuovo Ordine">
							<f:param name="id" value="#{loginController.customer.id}" />
						</h:commandLink>
					</h:form>
					</div>
			<div id="indexCliente" align="center">	<h:form>
						<h:commandLink action="#{orderController.listCustomerOrders}"
							value="Elenco dei tuoi Ordini">
							<f:param name="id" value="#{loginController.customer.id}" />
						</h:commandLink>
					</h:form>
					</div>
			
	
		<div  id="logOut" align="center">
			<h:form>
				<br>
				<br>
				<h:commandButton value="Logout"
					action="#{loginController.tornaAllaHomepage}" />
			</h:form>
		</div>
	</f:view>
</body>
</html>