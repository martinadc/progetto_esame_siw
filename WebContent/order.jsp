<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=US-ASCII">
<title>Order</title>
</head>
<body>
<f:view>
	<h1>Dettagli Ordine</h1>
	<div>Data Apertura: ${orderController.order.openTime} </div>  
	<div>Data Chiusura: ${orderController.order.closeTime} </div> 
	<div>Data Evasione: ${orderController.order.evasionTime} </div>
	<br> 
	<div>Nome Cliente: ${orderController.order.customer.name} </div>   
	<br>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaHomepageCliente}" value = "Torna alla tua Homepage"/>
		</h:form>
	</div>
</f:view>
</body>
</html>