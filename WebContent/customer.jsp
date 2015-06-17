<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">

<title>Cliente</title>
</head>
<body>
<f:view>
	<h1>Dettagli del Cliente</h1>
	<div>Nome: ${customerController.customer.name} </div>
	<div>Cognome: ${customerController.customer.surname} </div>
	<div>Numero di Telefono: ${customerController.customer.phoneNumber} </div>
	<div>Data di Nascita: ${customerController.customer.dateOfBirth} </div>
	<div>Data di Registrazione: ${customerController.customer.registrationDate} </div>
	<br>
	<h2>Dettagli dell' indirizzo</h2>
	<div>Via: ${customerController.customer.address.street}</div>
	<div>Citta': ${customerController.customer.address.city}</div>
	<div>Stato: ${customerController.customer.address.state}</div>
	<div>CAP: ${customerController.customer.address.cap}</div>
	<div>Provincia: ${customerController.customer.address.province}</div>
	<br>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaAllaHomepage}" value = "Torna alla Homepage"/>
		</h:form>
	</div>
</f:view>
</body>
</html>