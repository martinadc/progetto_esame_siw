<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Elenco Ordini</title>
</head>
<body>

<f:view>
<h1>Elenco Ordini</h1>
<h:form>
<table>
	<tr>
		<th>ID Ordine</th><th>Data Apertura</th><th>Data Chiusura</th> <th>Data Evasione</th>
	</tr>
	<c:forEach var="order" items="#{orderController.orders}">
		<tr>
		<td>${order.id}</td>
		<td>${order.openTime}</td>
		<td>${order.closeTime}</td>
		<td>${order.evasionTime}</td>
		<td>
			<h:commandLink action="#{orderController.findOrderForAdmin}" value="Mostra Dettagli">
				<f:param name="id" value="#{order.id}" />
			</h:commandLink>
		</td>
		<td>
			<h:commandLink action="#{orderController.removeOrder}" value="Elimina">
				<f:param name="id" value="#{order.id}" />
			</h:commandLink>
		</td>
		<td>
			<h:commandLink action="#{customerController.findCustomer}" value="Mostra Cliente">
				<f:param name="id" value="#{order.customer.id}" />
			</h:commandLink>
		</td>
		</tr>
	</c:forEach>
</table>
</h:form>
	<br>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaHomepageAdmin}" value = "Torna alla tua Homepage"/>
		</h:form>
	</div>
</f:view>


</body>
</html>