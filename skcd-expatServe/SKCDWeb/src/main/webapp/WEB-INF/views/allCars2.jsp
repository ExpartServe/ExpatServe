<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />" 	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap/bootstrap-theme.css" />" 	rel="stylesheet">
<link href="<c:url value="/resources/css/product/globalstyle.css" />"	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap/animate.css" />" 	rel="stylesheet">
<script type="text/javascript" 	src="<c:url value="/resources/js/jquery/jquery-1.12.4.min.js" />"></script>
<script type="text/javascript" 	src="<c:url value="/resources/js/jquery/jquery-ui-1.9.2.custom.min.js" />"></script>
<script type="text/javascript"	src="<c:url value="/resources/js/bootstrap/bootstrap.js" />"></script>
<script type="text/javascript"  src="<c:url value="/resources/js/bootstrap/bootstrap-notify.js" />"></script>
<script type="text/javascript"	src="<c:url value="/resources/js/angular/angular.js" />"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-touch.js"></script>
<script>

var productDetails = ${productDetails};
</script>
<script type="text/javascript" src="<c:url value="/resources/js/product/product.js" />"></script>
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
      <a class="navbar-brand" href="#">Ahmady Motors</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" ng-model="searchProduct.productName ">
        </div>
      
      </form>
     </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
<div class="row" >
  <div class="col-xs-12 col-md-3" ng-repeat="product in productNames | filter:searchProduct" ng-swipe-left="showActions = true" ng-swipe-right="showActions = false">
    <a href="#." class="thumbnail"  >
          <img ng-src="<c:url value="/resources/images/{{product.productImageName}}" />" alt="{{product.productName}}" >
        <div class="caption">
        <h3>{{ product.productName }}</h3>
        <p ng-show="showActions" ><button ng-click="addToCompareNtfcn(product)">AddToCompare</button> <button ng-click="openModal(product.porductId,product.productName,product.productDesc)">Details</button></p>
         
        </div>
    </a>

  </div>  
</div>	
		<div class="bs-example">
   <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="Popover title" data-content="<button ng-click='addToCompareNtfcn(product)'>Add to compare</button>">Click to toggle popover</button>
		
		
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


