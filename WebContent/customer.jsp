<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Cliente</title>
</head>
<body>
<f:view>
	<h1>Dettagli del Cliente</h1>
	<div>Nome: ${customerController.customer.name} </div>
	<div>Cognome: ${customerController.customer.surname} </div>
	<div>Email: ${customerController.customer.email} </div>
	<div>Numero di Telefono: ${customerController.customer.phoneNumber} </div>
	<div>Data di Nascita: ${customerController.customer.dateOfBirth} </div>
	<div>Data di Registrazione: ${customerController.customer.registrationDate} </div>
	<br>
	<br>
	<div>
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla Homepage</a>
	</div>
</f:view>
</body>
</html>