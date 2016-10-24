<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	src="<c:url value="/resources/js/product/product.js" />"></script>

<title>Products</title>
</head>
<body ng-app="myApp" ng-controller="namesCtrl">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">SKCD Mart</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" ng-model="searchProduct.name">
        </div>
      
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#.">About Us</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
<div class="row" >
  <div class="col-xs-12 col-md-3" ng-repeat="product in productNames | filter:searchProduct">
    <a href="#." class="thumbnail"  ng-click="openModal(product.id)">
      <img src="<c:url value="/resources/images/{{product.image}}" />" alt="{{ product.name }}">
        <div class="caption">
        <h3>{{ product.name }}</h3>
        <p>{{ product.desc }}</p>
        </div>
    </a>
   
  </div>
   
</div>	
		
		
		
		<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" id="modalHeader">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p id="modalText">Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
		

</body>


</html>


