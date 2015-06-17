<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Ordine Creato</title>
</head>
<body>
	<f:view>
		<h1>Dettagli Ordine Aperto</h1>
		<div>Data Apertura: ${orderController.order.openTime}</div>
		<div>Data Chiusura: ${orderController.order.closeTime}</div>
		<div>Data Evasione: ${orderController.order.evasionTime}</div>
		<br>
		<div>Nome Cliente: ${orderController.order.customer.name}</div>
		<br>
		<h1>Quale prodotto vuoi acquistare?</h1>
		<h:form>
			<table>
				<tr>
					<th>Nome</th><th>Prezzo</th><th>Codice</th>
				</tr>
				<c:forEach var="product" items="#{orderController.productsCatalog}">
					<tr>
						<td>${product.name}</td>
						<td>${product.price}</td>
						<td>${product.code}</td>						
					</tr>
				</c:forEach>
			</table>
		</h:form>
		<br>
		<h2>Inserisci i dati del prodotto che vuoi aggiungere all'ordine:</h2>
		<h:form>
			<div id="orderCreated">Quantita':	<h:inputText value="#{orderLineController.quantity}" 
					required="true"
					requiredMessage="campo Quantita' obbligatorio"
					converterMessage="Quantita' deve essere un numero" id="quantity" />
				<h:message for="quantity" />
			</div> 
			<div id="orderCreated">Codice Prodotto:	<h:inputText value="#{orderLineController.productCode}" 
					required="true"
					requiredMessage="campo Codice Prodotto obbligatorio"
					id="productcode" />
				<h:message for="productcode" />
			</div> 

			<div id="orderCreated">
				<h:commandButton value="Inserisci"
					action="#{orderLineController.createOrderLine}">
					<f:param name="id" value="#{orderController.order.id}" />
				</h:commandButton>

			</div>

		</h:form>
		<br>
		<br>
		<div>
			<h:form>
				<h:commandLink action="#{loginController.tornaHomepageCliente}"
					value="Torna alla tua Homepage" />
			</h:form>
		</div>
	</f:view>
</body>
</html>