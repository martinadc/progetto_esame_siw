 <%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
 <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
 <%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>searchProductByCode</title>
</head>
<body>
<f:view>
<h1>Codice Prodotto:</h1>
<h:form>
    <div>Codice: <h:inputText value="#{productController.code}" 
                     required="true"
                     requiredMessage="campo Codice obbligatorio" id="code"/> <h:message for="code" />
	</div>
	<div>
		<h:commandButton value="Cerca"  action="#{productController.findProductByCode}"/>
	</div>
	
</h:form>
</f:view>

</body>
</html>