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

<title>LOG-IN</title>
</head>
<body>
<f:view>
		<div id="titoloLogin" align="center"><h1>Inserisci le tue credenziali </h1></div>
<h:form>
    <div align="center" id="loginMail">Email: <h:inputText value="#{loginController.email}" 
                     required="true"
                     requiredMessage="campo Email obbligatorio" id="email"/> <h:message for="email" />
	</div>
    <div  align="center" id="loginPassword">Password: <h:inputText value="#{loginController.password}" 
                     required="true"
                     requiredMessage="campo Password obbligatorio" id="password"/> <h:message for="password" />
	</div>
 <div align="center" id="loginRuolo"> Ruolo:
    <h:selectOneMenu value="#{loginController.ruolo}">
        <f:selectItem itemValue="cliente" itemLabel="cliente" />
        <f:selectItem itemValue="amministratore" itemLabel="amministratore" />
    </h:selectOneMenu>
  </div>  

      
<div   align="center" id="loginButton">
		<h:commandButton value="Login"  action="#{loginController.verificaCredenziali}"/>
	</div>
	
</h:form>
</f:view>

</body>
</html>