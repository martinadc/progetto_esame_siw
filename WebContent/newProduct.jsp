<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Nuovo Prodotto</title>
</head>
<body>
<f:view>
<h1>Nuovo Prodotto</h1>
<h:form>
    <div id="newProduct">Nome: <h:inputText value="#{productController.name}" 
                     required="true"
                     requiredMessage="campo Nome obbligatorio" id="name"/> <h:message for="name" />
	</div>
    <div id="newProduct">Codice: <h:inputText value="#{productController.code}" 
                     required="true"
                     requiredMessage="campo Codice obbligatorio" id="code"/> <h:message for="code" />
	</div>
    <div id="newProduct">Prezzo: <h:inputText value="#{productController.price}" 
                     required="true"
                     requiredMessage="campo Prezzo obbligatorio"
                     converterMessage="Prezzo deve essere un numero"
                     id="price"/> <h:message for="price" />
	</div>
    <div id="newProduct">Descrizione: <h:inputTextarea value="#{productController.description}" 
    				required="false" 
    				cols="20" 
    				rows="5" /> 
    </div>
    <div id="newProduct">Quantita' Disponibile: <h:inputText value="#{productController.quantity}" 
                     required="true"
                     requiredMessage="campo Quantita' obbligatorio"
                     converterMessage="Quantita' deve essere un numero"
                     id="quantity"/> <h:message for="quantity" />
	</div>
	<div id="newProduct">
		<h:commandButton value="Inserisci"  action="#{productController.createProduct}"/>
	</div>
	
</h:form>
</f:view>
</body>
</html>