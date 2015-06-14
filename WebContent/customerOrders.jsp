<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Elenco Ordini Cliente</title>
</head>
<body>

<f:view>
<h1>Il tuo Elenco Ordini!</h1>
<h:form>
<table>
	<tr>
		<th>Data Apertura</th><th>Data Chiusura</th> <th>Data Evasione</th>
	</tr>
	<c:forEach var="order" items="#{orderController.customerOrders}">
		<tr>
		<td>${order.openTime}</td>
		<td>${order.closeTime}</td>
		<td>${order.evasionTime}</td>
		<td>
			<h:commandLink action="#{orderController.findOrder}" value="Mostra Dettagli">
				<f:param name="id" value="#{order.id}" />
			</h:commandLink>
		</td>
		<td>
			<h:commandLink action="#{orderController.removeOrder}" value="Elimina">
				<f:param name="id" value="#{order.id}" />
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
			<h:commandLink action="#{loginController.tornaHomepageCliente}" value = "Torna alla tua Homepage"/>
		</h:form>
	</div>
</f:view>


</body>
</html>