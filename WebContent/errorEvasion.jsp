<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=US-ASCII">
<title>Errore Evasione</title>
</head>
<body>
<f:view>
	<h1>ERRORE!</h1>
	<h1>Non e' possibile Evadere l'ordine:</h1>
	<h2>Quantita' di prodotti non disponibile in magazzino!</h2>
	<br>
	<br>
	<div>
		<h:form>
			<h:commandLink action="#{loginController.tornaHomepageAdmin}" value = "Torna alla tua Homepage"/>
		</h:form>
	</div>
</f:view>
</body>
</html>