<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Spring MVC - Tiles Integration tutorial</title>
<link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/bootstrap/bootstrap-theme.css" />"
	rel="stylesheet">
	<link
	href="<c:url value="/resources/css/product/globalstyle.css" />"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery-1.12.4.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery-ui-1.9.2.custom.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap/bootstrap.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/angular/angular.js" />"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/product/global.js" />"></script>



</head>
<body>

<tiles:insertAttribute name="header" />




<tiles:insertAttribute name="body" />

<!-- Footer Page -->
<tiles:insertAttribute name="footer" />
</body>
</html>