<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
        <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>	Conferma Chiusura Ordine</title>
</head>
<body>
<f:view>
 
 	<h1>GRAZIE per aver acquistato i nostri Prodotti!</h1>
 	<h2>Non appena l'ordine sara' evaso le invieremo una mail di conferma</h2>
 	<br>
 	<h2>A Presto!</h2>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaHomepageCliente}" value = "Torna alla tua Homepage"/>
		</h:form>
	</div>
	
</f:view>
</body>
</html>