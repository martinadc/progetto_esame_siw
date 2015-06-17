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
<title>Nuovo Indirizzo</title>
</head>
<body>
	<f:view>
		<h1>Nuovo Indirizzo</h1>
		<h:form>
			<div>
				Via:
				<h:inputText value="#{addressController.street}" required="true"
					requiredMessage="Campo Via obbligatorio" id="street" />
				<h:message for="street" />
			</div>
			<div>
				Citta':
				<h:inputText value="#{addressController.city}" required="true"
					requiredMessage="Campo Citta' obbligatorio" id="city" />
				<h:message for="city" />
			</div>
			<div>
				Stato:
				<h:inputText value="#{addressController.state}" required="true"
					requiredMessage="Campo Stato obbligatorio" id="state" />
				<h:message for="state" />
			</div>
			<div>
				CAP:
				<h:inputText value="#{addressController.cap}" required="true"
					requiredMessage="Campo CAP obbligatorio"
					converterMessage=" Caratteri non validi" id="cap" />

				<h:message for="cap" />

			</div>
			<div>
				Provincia:
				<h:inputText value="#{addressController.province}" required="true"
					requiredMessage="Campo Provincia obbligatorio" id="province" />
				<h:message for="province" />
			</div>
			<div>
				<h:commandButton value="Inserisci"
					action="#{addressController.createAddress}" />
			</div>
		</h:form>
	</f:view>
<body>

</body>
</html>