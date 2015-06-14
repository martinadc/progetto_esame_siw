<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Anagrafica Clienti</title>
</head>
<body>
<f:view>
<h1>Anagrafica Clienti</h1>
<h:form>
<table>
	<tr>
		<th>Nome</th><th>Cognome</th>
	</tr>
	<c:forEach var="customer" items="#{customerController.customers}">
		<tr>
		<td>${customer.name}</td>
		<td>${customer.surname}</td>
		<td>
			<h:commandLink action="#{customerController.findCustomer}" value="Mostra Dettagli">
				<f:param name="id" value="#{customer.id}" />
			</h:commandLink>
		</td>
		<td>
			<h:commandLink action="#{customerController.removeCustomer}" value="Elimina">
				<f:param name="id" value="#{customer.id}" />
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

</body>
</html>