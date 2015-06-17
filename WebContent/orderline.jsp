<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=US-ASCII">
<title>RigaOrdine</title>
</head>
<body>
<f:view>
	<h1>Dettagli del Prodotto aggiunto all'ordine:</h1>
	<div>Id Ordine: ${orderLineController.order.id}</div>
	<br>
	<div>Prezzo: ${orderLineController.orderline.unitPrice}</div>
	<div>Quantita': ${orderLineController.orderline.quantity}</div>
	<br>
	<div>Prodotto: ${orderLineController.orderline.product.name}</div>
	<br>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaHomepageCliente}" value = "Torna alla tua Homepage per modificare l'ordine ed aggiungere altri prodotti"/>
		</h:form>
	</div>
</f:view>
</body>
</html>