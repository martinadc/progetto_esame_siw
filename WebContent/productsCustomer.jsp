<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Catalogo Prodotti</title>
</head>
<body>

<f:view>
<h1>Catalogo Prodotti</h1>
<h:form>
<table>
	<tr>
		<th>Nome</th><th>Prezzo</th>
	</tr>
	<c:forEach var="product" items="#{productController.products}">
		<tr>
		<td>${product.name}</td>
		<td>${product.price}</td>
		<td>
			<h:commandLink action="#{productController.findProduct}" value="Mostra Dettagli">
				<f:param name="id" value="#{product.id}" />
			</h:commandLink>
		</td>
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