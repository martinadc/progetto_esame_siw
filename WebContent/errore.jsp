<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>	ERRORE</title>
</head>
<body>
<f:view>
 
 <h1>ERRORE:log-in non riuscito!</h1>
 <h2>email o password errati!</h2>
<div>
		<a href='<c:url value="/faces/login.jsp" />'>torna alla pagina di log-in</a>
	</div>
</f:view>
</body>
</html>