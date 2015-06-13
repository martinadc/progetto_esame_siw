<%@ page language="java" contentType="text/html;  charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index Cliente</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto su VIDEO.it</h1>
		<ul>
			<li><h:form>
					<h:commandLink action="#{productController.listProducts}"
						value="Catalogo Prodotti" />
				</h:form></li>
		
		</ul>
	</f:view>
</body>
</html>