<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo Cliente</title>
</head>
<body>
	<f:view>
		<h1>Nuovo Cliente</h1>
		<h:form>
			<div>
				Nome: <h:inputText value="#{customerController.name}"
					required="true"
					requiredMessage="campo Nome obbligatorio" id="name" />	<h:message for="name" />
			</div>
			<div>
				Cognome: <h:inputText value="#{customerController.surname}" 
					required="true"
					requiredMessage="campo Cognome obbligatorio" id="surname" /> <h:message for="surname" />
			</div>
			<div>
				Numero di Telefono:	<h:inputText value="#{customerController.phoneNumber}" />
			</div>
			<div>
				Data di Nascita: <h:inputText value="#{customerController.dateOfBirth}"
					required="true"
					requiredMessage="campo Data di Nascita obbligatorio"
					id="dateofbirth" />
				<h:message for="dateofbirth" />
			</div>
			<div>
				Data di Registrazione:<h:inputText value="#{customerController.registrationDate}"
					required="true"
					requiredMessage="campo Data di Registrazione obbligatorio"
					id="registrationdate" /> <h:message for="registrationdate" />
			</div>
			<br>
			<div>
				Email:<h:inputText value="#{customerController.email}"
					required="true"
					requiredMessage="campo Email obbligatorio"
					id="email" /> <h:message for="email" />
			</div>
			<div>
				Password:<h:inputText value="#{customerController.password}"
					required="true"
					requiredMessage="campo Password obbligatorio"
					id="password" /> <h:message for="password" />
			</div>
			<br>
			<div>
				Via: <h:inputText value="#{customerController.street}" required="true"
					requiredMessage="Campo Via obbligatorio" id="street" />
				<h:message for="street" />
			</div>
			<div>
				Citta':
				<h:inputText value="#{customerController.city}" required="true"
					requiredMessage="Campo Citta' obbligatorio" id="city" />
				<h:message for="city" />
			</div>
			<div>
				Stato:
				<h:inputText value="#{customerController.state}" required="true"
					requiredMessage="Campo Stato obbligatorio" id="state" />
				<h:message for="state" />
			</div>
			<div>
				CAP:
				<h:inputText value="#{customerController.cap}" required="true"
					requiredMessage="Campo CAP obbligatorio"
					converterMessage=" Caratteri non validi" id="cap" /> <h:message for="cap" />
			</div>
			<div>
				Provincia:
				<h:inputText value="#{customerController.province}" required="true"
					requiredMessage="Campo Provincia obbligatorio" id="province" />
				<h:message for="province" />
			</div>
			
			<div>
				<h:commandButton value="Inserisci" action="#{customerController.createCustomer}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>