<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Rubrica Indirizzi</title>
</head>
<body>
	<f:view>
		<h1>Rubrica Indirizzi</h1>
		<h:form>
			<table>
				<tr>
					<th>Via</th>
				</tr>
				<c:forEach var="address" items="#{addressController.addresses}">
					<tr>
						<td>${address.street}</td>
						<td><h:commandLink action="#{addressController.findAddress}"
								value="Mostra Dettagli">
								<f:param name="id" value="#{address.id}" />
							</h:commandLink></td>
					</tr>
				</c:forEach>
			</table>
		</h:form>
		<br>
		<br>
		<div>
			<a href='<c:url value="/faces/index.jsp" />'>Torna alla Homepage</a>
		</div>
	</f:view>

</body>
</html>