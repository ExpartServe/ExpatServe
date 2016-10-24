<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Expat Serve - One stop shop</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1, user-scalable=no">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes, minimum-scale=1, maximum-scale=2"> -->
    <link rel="stylesheet" href="<c:url value="/resources/css/app2.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/css/font-css/font-awesome.min.css"/>">
<script type="text/javascript" 	src="<c:url value="/resources/js/jquery/jquery-1.12.4.min.js" />"></script>
    <script type="text/javascript"	src="<c:url value="/resources/js/angular/angular.js" />"></script>
    <script src="<c:url value="/resources/js/app.js"/>"></script>
    <script src="<c:url value="/resources/js/dataFactory.js"/>"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
    .landing-img{
    min-height:100%;
    min-width:100%;
    height:auto;
    width:auto;
    position:absolute;
    top:-100%; bottom:-100%;
    left:-100%; right:-100%;
    margin:auto;
    overflow:hidden;
    }
    </style>
</head>

<body ng-app="appname" ng-controller="myCtrl">
    <!--
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->
    <div class="container">
        <div id="expatImg">
        	<img src="<c:url value="/resources/images/expat.jpg"/>" alt="Expat Serve" class="landing-img"></img>
        </div>
        <div id="expatOptions" style="display: none">
        	<div class="list-housing-list1" onclick="openPage('ViewPostPage')">
                    <div class="list-house-image">
                        <img src="<c:url value="/resources/images/housing.jpg"/>" class="list-img-block">
                    </div>
                    <div class="list-housing-details1">
                        	<span class="address-block">Housing</span>
                     </div>
              </div>
              <div class="list-housing-list1">
                    <div class="list-house-image">
                        <img src="<c:url value="/resources/images/locker.jpg"/>" class="list-img-block blur-img">
                    </div>
                     <div class="list-housing-details1">
                        	<span class="address-block">Digital Locker - Coming soon...</span>
                     </div>
              </div>
              <div class="list-housing-list1">
                    <div class="list-house-image">
                        <img src="<c:url value="/resources/images/money-transfer.jpg"/>" class="list-img-block blur-img">
                    </div>
                    <div class="list-housing-details1">
                        	<span class="address-block">Money Transfer - Coming soon...</span>
                     </div>
              </div>
              <div class="list-housing-list1">
                    <div class="list-house-image">
                        <img src="<c:url value="/resources/images/investment.jpg"/>" class="list-img-block blur-img">
                    </div>
                    <div class="list-housing-details1">
                        	<span class="address-block">Investment - Coming soon...</span>
                     </div>
              </div>
        </div> 
    </div>
</body>
<script>
setTimeout(function(){
    $("#expatImg").hide();
    $("#expatOptions").show();
}, 5000);
function openPage(page){
	window.location.href=page;
}
</script>
</html>
