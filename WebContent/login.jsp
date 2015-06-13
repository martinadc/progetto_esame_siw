 <%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
 <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
 <%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>LOG-IN</title>
</head>
<body>
<f:view>
		<h1>Inserisci le tue credenziali </h1>
<h:form>
    <div>Email: <h:inputText value="#{loginController.email}" 
                     required="true"
                     requiredMessage="campo Email obbligatorio" id="email"/> <h:message for="email" />
	</div>
    <div>Password: <h:inputText value="#{loginController.password}" 
                     required="true"
                     requiredMessage="campo Password obbligatorio" id="password"/> <h:message for="password" />
	</div>
 <div> Ruolo:
    <h:selectOneMenu value="#{loginController.ruolo}">
        <f:selectItem itemValue="cliente" itemLabel="cliente" />
        <f:selectItem itemValue="admin" itemLabel="amministratore" />
    </h:selectOneMenu>
  </div>  

 
 
 
 
      
<div>
		<h:commandButton value="Login"  action="#{loginController.verificaCredenziali}"/>
	</div>
	
</h:form>
</f:view>

</body>
</html>