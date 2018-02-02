<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
div.desc {
    padding: 15px;
    text-align: center;
}
.alb{
height: 200px;
width: 200px;
}
#products{
background: threedlightshadow;
color: black;
font-size: x-large;
font-family: fantasy;
}
.Latest{
padding-top: 10px;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<c:if test="${not empty DisplayByLatestProduct}">
		<div id="albums" class="col-sm-12">
			<p class="Latest">Latest Products</p>
	</div>
</c:if>
<c:if test="${empty DisplayByLatestProduct}">
		<div id="albums" class="col-sm-12">
			<p class="Latest">Products</p>
	</div>
</c:if>
<c:forEach items="${product}" var="product">

<div class="gallery">
  <a href="productdescription?productId=${product.productId}">
    <img src="resources/heels/${product.productId}.jpg" alt="${product.productId}" width=250px; height=250px;>
  </a>
  <div class="desc"><ul style="list-style-type:none">
  <li class="span2"><h5 style="color: blue" >${product.productName}</h5>
  <h6>Price:Rs.${product.price}</h6></li></ul></div>
</div>

</c:forEach>
</body>
</html>