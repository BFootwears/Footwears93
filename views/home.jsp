<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>B Footwears</title>
<style type="text/css">
html {
	height: 100%;
}
body {
	background: url(resources/bg3/prohome.jpg) !important;
	padding: 0px;
	height: 100%;
}
.wrapper {
	min-height: 100%;
	position: relative;
}
.content{
	padding-bottom: 60px;
}
embed {
align-content: center;
}
</style>
</head>
<body>
<div class="wrapper">
		<div class="content">
		<%@ include file="header.jsp"%>
		<br><br>
					<%@ include file="carousel.jsp"%>
					<%@ include file="displaysupplier.jsp"%>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>