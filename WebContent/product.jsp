<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Prodotto</title>
</head>
<body>
<f:view>
<h1>${productController.product.name}</h1>
<h2>Dettagli del Prodotto</h2>
<div>Codice: ${productController.product.code}</div>
<div>Prezzo: ${productController.product.price}</div>
<div>Descrizione: ${productController.product.description}</div>
<div>Quantita' Disponibile: ${productController.product.quantity}</div>
</f:view>
</body>
</html>