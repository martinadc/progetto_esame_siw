<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
        <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>	ERRORE</title>
</head>
<body>
<f:view>
 
 	<h1>ERRORE:qualcosa e' andato storto!</h1>
 	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaAllaHomepage}" value = "Torna alla Homepage"/>
		</h:form>
	</div>
	
</f:view>
</body>
</html>