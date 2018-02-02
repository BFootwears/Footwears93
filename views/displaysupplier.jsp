<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

div.gallery {
    margin: 10px;
    float: left;
    width: 250px;
    padding: 30px;
}

div.gallery img {
    width: 400px;
    height: 325px;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>

<c:forEach items="${supplierList}" var="supplier">

<div class="gallery col-offset-5 col-sm-1">
  <a href="displayproduct?suppliername=${supplier.supplierName}">
    <img align="middle" src="resources/Brands/${supplier.supplierId}.jpg" alt="${supplier.supplierId}" width=200px; height=200px;>
  </a>
  <div class="desc"><ul style="list-style-type:none">
  <li class="span2"><h5 id="pn" align="center" "color: blue" >${supplier.supplierName}</h5></li></ul></div>
</div>

</c:forEach>
</body>
</html>