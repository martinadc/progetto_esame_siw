<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Prodotto</title>
</head>
<body>
<f:view>
<h1>${productController.product.name}</h1>
<h2>Dettagli del Prodotto</h2>
	<div>Codice: ${productController.product.code}</div>
	<div>Prezzo: ${productController.product.price}</div>
	<div>Descrizione: ${productController.product.description}</div>
	<div>Quantita' Disponibile: ${productController.product.quantity}</div>
	<br>
	<br>
	<div>
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla Homepage</a>
	</div>
</f:view>
</body>
</html>