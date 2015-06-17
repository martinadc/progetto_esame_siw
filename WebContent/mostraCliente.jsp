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
<title>Cliente</title>
</head>
<body>
<f:view>
	<h1>Dettagli del Cliente</h1>
	<div>Nome: ${datalogController.customer.name} </div>
	<div>Cognome: ${datalogController.customer.surname} </div>
	<div>Numero di Telefono: ${datalogController.customer.phoneNumber} </div>
	<div>Data di Nascita: ${datalogController.customer.dateOfBirth} </div>
	<div>Data di Registrazione: ${datalogController.customer.registrationDate} </div>
	<br>
	<br>
	<div>
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla Homepage</a>
	</div>
</f:view>
</body>
</html>