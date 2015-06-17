<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Nuovo Cliente</title>
</head>
<body>
	<f:view>
		<h1>Nuovo Cliente</h1>
		<h:form>
			<div id="newCustomer">
				Nome: <h:inputText value="#{customerController.name}"
					required="true"
					requiredMessage="campo Nome obbligatorio" id="name" />	<h:message for="name" />
			</div>
			<div id="newCustomer">
				Cognome: <h:inputText value="#{customerController.surname}" 
					required="true"
					requiredMessage="campo Cognome obbligatorio" id="surname" /> <h:message for="surname" />
			</div>
			<div id="newCustomer">
				Numero di Telefono:	<h:inputText value="#{customerController.phoneNumber}" />
			</div>
			<div id="newCustomer">
				Data di Nascita: <h:inputText value="#{customerController.dateOfBirth}"
					required="true"
					requiredMessage="campo Data di Nascita obbligatorio"
					id="dateofbirth" />
				<h:message for="dateofbirth" />
			</div>
			<div id="newCustomer">
				Data di Registrazione:<h:inputText value="#{customerController.registrationDate}"
					required="true"
					requiredMessage="campo Data di Registrazione obbligatorio"
					id="registrationdate" /> <h:message for="registrationdate" />
			</div>
			<br>
			<div id="newCustomer">
				Email:<h:inputText value="#{customerController.email}"
					required="true"
					requiredMessage="campo Email obbligatorio"
					id="email" /> <h:message for="email" />
			</div>
			<div id="newCustomer">
				Password:<h:inputText value="#{customerController.password}"
					required="true"
					requiredMessage="campo Password obbligatorio"
					id="password" /> <h:message for="password" />
			</div>
			<br>
			<div id="newCustomer">
				Via: <h:inputText value="#{customerController.street}" required="true"
					requiredMessage="Campo Via obbligatorio" id="street" />
				<h:message for="street" />
			</div>
			<div id="newCustomer">
				Citta':
				<h:inputText value="#{customerController.city}" required="true"
					requiredMessage="Campo Citta' obbligatorio" id="city" />
				<h:message for="city" />
			</div>
			<div id="newCustomer">
				Stato:
				<h:inputText value="#{customerController.state}" required="true"
					requiredMessage="Campo Stato obbligatorio" id="state" />
				<h:message for="state" />
			</div>
			<div id="newCustomer">
				CAP:
				<h:inputText value="#{customerController.cap}" required="true"
					requiredMessage="Campo CAP obbligatorio"
					converterMessage=" Caratteri non validi" id="cap" /> <h:message for="cap" />
			</div>
			<div id="newCustomer">
				Provincia:
				<h:inputText value="#{customerController.province}" required="true"
					requiredMessage="Campo Provincia obbligatorio" id="province" />
				<h:message for="province" />
			</div>
			
			<div id="newCustomer">
				<h:commandButton value="Inserisci" action="#{customerController.createCustomer}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>