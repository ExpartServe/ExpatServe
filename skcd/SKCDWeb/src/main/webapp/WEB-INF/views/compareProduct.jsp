<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compare Product</title>
	<script>
	var compJson = ${compJson};
	</script>
<script type="text/javascript"
	src="<c:url value="/resources/js/product/compareProduct.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/product/global.js" />"></script>
</head>
<body>
<div class="container" ng-app="compareProduct" ng-controller="compareProductCntrlr">
  <h2>Car Comparison</h2>    
  <p>The .table will show the car comparison</p>                  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Features</th>
        <th ng-repeat="cars in compareFeatures ">{{cars.carName}}</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Engine Type</td>
        <td ng-repeat="cars in compareFeatures">{{cars.features.engineType}}</td>
       
      </tr>
      <tr>
        <td>Air Bag</td>
   <td ng-repeat="cars in compareFeatures">{{cars.features.airBag}}</td>
      </tr>
     <tr>
        <td>ABS</td>
   <td ng-repeat="cars in compareFeatures">{{cars.features.abs}}</td>
      </tr>
    </tbody>
  </table>
  



  
  
</div>
</body>
</html>