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
	<h2>Contenuto dell' Ordine</h2>
	<h:form>
		<table>
			<tr>
				<th>Prezzo</th><th>Quantita'</th><th>Prodotto</th><th>Codice</th><th>Descrizione</th>
			</tr>
			<c:forEach var="orderline" items="#{orderController.lines}">
				<tr>
					<td>${orderline.unitPrice}</td>
					<td>${orderline.quantity}</td>
					<td>${orderline.product.name}</td>
					<td>${orderline.product.code}</td>
					<td>${orderline.product.description}</td>
				</tr>
			</c:forEach>
		</table>
	</h:form>	
	
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