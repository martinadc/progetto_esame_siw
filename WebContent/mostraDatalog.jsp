<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Datalog</title>
</head>
<body>
<f:view>
	<h1>Dettagli Datalog</h1>
	<div>Email: ${datalogController.datalog.email} </div>
	<div>Password: ${datalogController.datalog.password} </div>
	<br>
	<br>
	<div>
		<a href='<c:url value="/faces/index.jsp" />'>Torna alla Homepage</a>
	</div>
</f:view>
</body>
</html>