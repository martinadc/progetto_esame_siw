<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>credenziali</title>
</head>
<body>
	<f:view>
		<h1>Immetti Credenziali</h1>
		<h:form>
			<div>
				Email:
				<h:inputText value="#{datalogController.email}"
					requiredMessage="campo Email obbligatorio" id="email" />
				<h:message for="email" />
			</div>
			<div>
				Password:
				<h:inputText value="#{datalogController.password}" required="true"
					requiredMessage="campo Password obbligatorio" id="password" />
				<h:message for="password" />
			</div>
			<div>
				<h:commandButton value="Cerca Credenziali" action="#{datalogController.findDatalogByEmail}" />
			</div>
			<br>
			<div>
				<h:commandButton value="Cerca Cliente" action="#{datalogController.findCustomerByEmail}" />
			</div>
		</h:form>
	</f:view>

</body>
</html>