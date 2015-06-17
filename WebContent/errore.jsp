<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
        <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>	ERRORE</title>
</head>
<body>
<f:view>
 
 	<h1>ERRORE:log-in non riuscito!</h1>
 	<h2>email o password errati!</h2>
	<div>
		<a href='<c:url value="/faces/login.jsp" />'>torna alla pagina di log-in</a>
	</div>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaAllaHomepage}" value = "Torna alla Homepage"/>
		</h:form>
	</div>
	
</f:view>
</body>
</html>