<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Elenco Ordini da evadere</title>
</head>
<body>

<f:view>
<h1>Elenco Ordini: Quale vuoi EVADERE?</h1>
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
		<c:if test="${order.closeTime != null}">
			<c:if test="${order.evasionTime == null}">
				<td>
					<h:commandLink action="#{orderController.evadeOrder}" value="Spedisci">
						<f:param name="id" value="#{order.id}" />
					</h:commandLink>  
				</td>
			</c:if>
		</c:if> 
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