<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Expat Serve</title>
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
    <link href="<c:url value="/resources/css/product/globalstyle.css" />"	rel="stylesheet">
</head>

<body ng-app="appname" ng-controller="myCtrl">
<%@include file="header.jsp" %>
    <div class="container">
        <div class="row" ng-switch="viewType">
            <div class="col-md-12">
                <div class="tabbable-panel">
                    <div class="tabbable-line">
                        <ul class="nav nav-tabs ">
                            <li class="active">
                                <a href="#tab_default_1" data-toggle="tab">
                     {{tab1name}} </a>
                            </li>
                            <li>
                                <a href="#tab_default_2" data-toggle="tab">
                     {{tab2name}} </a>
                            </li>
                            <div style="float:right">
                                <span ng-if="viewType=='listview'" class="glyphicon glyphicon-th-list" ng-click="changeview('detailview');" style="line-height:46px; width:35px; text-align:center"></span>
                                <span ng-if="viewType=='detailview'" class="glyphicon glyphicon-th" ng-click="changeview('listview');" style="line-height:46px; width:35px; text-align:center"></span>
                            </div>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_default_1">
                                <div ng-repeat="item in itemList" ng-switch-when="listview">
                                    <div class="house-list">
                                        <div class="house-image">
                                            <img src=data:image/jpeg;base64,{{item.houseList[0].disImage}} class="img-block">
                                        </div>
                                        <div class="housing-details">
                                            <div class="title">
                                                {{item.houseList[0].houseType}} available in {{item.houseList[0].city}}
                                            </div>
                                            <div class="address">
                                                {{item.houseList[0].hsNumber}}, {{item.houseList[0].postCode}},{{item.houseList[0].city}}
                                            </div>
                                            <div class="post-time">
                                                {{item.houseList[0].houseDesc}}
                                            </div>
                                            <div class="rent-amount">
                                                {{item.houseList[0].rent_amnt}}  Euros  {{item.houseList[0].inclusiveFlag ? 'Inclusive':'Exclusive'}}
                                            </div>
                                        </div>
                                        <div class="like-icon">
                                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                                <div ng-switch-when="detailview">
                                    <div class="tab-pane" id="tab_default_2">
                                        <div ng-repeat="item in itemList">
                                            <div class="list-housing-list">
                                                <div class="list-house-image">
                                                    <img src="data:image/jpeg;base64,{{item.houseList[0].disImage}}" class="list-img-block">
                                                </div>
                                                <div class="list-housing-details">
                                                    <div class="list-address-rent-block">
                                                        <span class="address-block">
                                                      <div class="title">
                                                      {{item.houseList[0].houseType}} available in {{item.houseList[0].city}}
                                                      </div>
                                                      <div class="address">
                                                     {{item.houseList[0].hsNumber}}, {{item.houseList[0].postCode}},{{item.houseList[0].city}} 
                                                      </div>
                                                          </span>
                                                        {{item.houseList[0].rent_amnt}}  Euros  {{item.houseList[0].inclusiveFlag ? 'Inclusive':'Exclusive'}}
                                                    </div>
                                                    <div class="list-reviews-time-block">
                                                        <span class="reviews">35 reviews</span>
                                                        <span class="list-post-time">2 Hours Ago</span>
                                                        <span class="list-like-icon">
                                                           <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                 </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_default_2">
                                <p>
                                    Coming Soon...
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-85015603-1', 'auto');
  ga('send', 'pageview');

</script>
</html>
