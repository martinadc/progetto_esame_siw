<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.theme.css" rel="stylesheet">
<link href="resources/css/cineteca.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<f:view>

		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">

			<div class="navbar-header">

				<button class="navbar-toggle collapsed" aria-controls="navbar"
					aria-expanded="false" data-target="#navbar" data-toggle="collapse"
					type="button">

					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<c:url value="/faces/index.jsp" />'>
					Movieland.it </a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">


					<a href='<c:url value="/faces/login.jsp" />'>Log-in</a> <span
						id="registra">Non sei registrato? Clicca</span> <a
						href='<c:url value="/faces/newCustomer.jsp" />'>qui</a>
			</div>
		</nav>

		<div id="jumbo" class="jumbotron">
			<div id="cont1" class="container">
				<h1>Benvenuto su MovieLand.it!</h1>

				<p>il primo sito italiano di e-commerce specializzato nella
					vendita di Blu-ray e DVD</p>

			</div>

		</div>

		<div align="center" class="inner cover">
			<h1 class="cover-heading">Consulta il catalogo</h1>
			<p class="lead">per scoprire la vasta gamma di prodotti che
				MovieLand puo' offrirti.</p>
			<div id="catalogo">
				<h:form>
					<h:commandButton action="#{productController.listProductsCustomer}"
						value="Catalogo Prodotti" />

				</h:form>

			</div>
		</div>



	</f:view>
</body>