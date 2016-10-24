<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="//code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" /> -->
<link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />" 	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap/bootstrap-theme.css" />" 	rel="stylesheet">
<link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker3.css" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap/animate.css" />" 	rel="stylesheet">
<script type="text/javascript" 	src="<c:url value="/resources/js/jquery/jquery-1.12.4.min.js" />"></script>
<script type="text/javascript" 	src="<c:url value="/resources/js/jquery/jquery-ui-1.9.2.custom.min.js" />"></script>

<script type="text/javascript"	src="<c:url value="/resources/js/bootstrap/bootstrap.js" />"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.1/js/bootstrap-datepicker.js"></script>

<script type="text/javascript"  src="<c:url value="/resources/js/bootstrap/bootstrap-notify.js" />"></script>
<script type="text/javascript"	src="<c:url value="/resources/js/angular/angular.js" />"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-touch.js"></script>


<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!-- <script src="//code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->

<link href="<c:url value="/resources/css/product/globalstyle.css" />"	rel="stylesheet">
<style>
.cust-input-group{
padding: 2% 6% 0 6% !important;
}
.cust-input-group-1{
padding: 2% 6% 0 0 !important;
}
.cust-input-group-2{
padding: 2% 1% 0 6% !important;
}
.cust-input-group-3 {
    padding: 2% 1% 0 0 !important;
}
.form-control{
border-radius:10px !important;
}
.btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active, .open .dropdown-toggle.btn-default  {
color: #fff ;
background-color: #000 ;
background-position: 0px;

}
.btn:hover, .btn.active, .btn:active{
color: #fff ;
background-color: #000 ;
background-position: 0px;

background-color: #000 ;
}
/* .ui-last-child, .ui-first-child{
margin-left: 20% !important;
   
    width: 100% !important;
}
.ui-btn{
 border-radius: 7.4px;
} */

body{
background-color: #5A5C61;
    border-color: #bbb;
    color: #fff;
}
.form-control{
background-color: #ACB0B8;
color:#fff;
border-color: #ACB0B8;
}

input::-webkit-input-placeholder,
textarea::-webkit-input-placeholder {
  color: #fff;
}
input:-moz-placeholder,
textarea:-moz-placeholder {
  color: #fff;
}
input::-moz-placeholder,
textarea::-moz-placeholder {
  color: #fff;
}
input:-ms-input-placeholder,
textarea:-ms-input-placeholder {
  color: #fff;
}

.ui-input-btn input{
background-color: #000;
color : #fff;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open .dropdown-toggle.btn-primary .btn .btn-primary
{
  background-color: #000;
  color:#fff;
}
.btn
{
  background-color: #000;
  border-color: #ACB0B8;
}
.form-control::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color:    #E4E8F1;
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
   color:    #E4E8F1;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
   color:    #E4E8F1;
}
:-ms-input-placeholder { /* Internet Explorer 10-11 */
   color:    #E4E8F1;
}
.datepicker {
background-color: #5A5C61;
    border-color: #bbb;
    color: #fff;
}

.col-2-right{
padding-right: 4%;padding-left: 6%;padding-top:2%
}
.col-2-left{
padding-right: 6%;padding-top:2% 
}
</style>

</head>

<body>






<%@include file="header.jsp" %>




	<form:form method="POST"  modelAttribute="addPostForm" action="postAdd" enctype="multipart/form-data">
		<center><h2>Ad Post</h2></center>
	
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group ">	
			  <form:input path="houseList[0].hsNumber" maxlength="50"  class="form-control" placeholder="House Number / Street Name" required="required"></form:input>
			</div>
		</div>
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group ">
	  			<form:input path="houseList[0].postCode" maxlength="6"   class="form-control" placeholder="Zip code" required="required"></form:input>
			</div>
		</div>
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:input path="houseList[0].city" maxlength="20"   class="form-control" placeholder="Enter the city" required="required"></form:input>
			</div>
		</div>
		
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
			   <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].houseType" name="houseType" id="shared" value="shared" checked="checked"></form:radiobutton>
		        <label for="shared">Shared</label>
		        <form:radiobutton path="houseList[0].houseType" name="housetype" id="completeHouse" value="completeHouse"></form:radiobutton>
		        <label for="completeHouse">Complete House</label>
       		 </fieldset>	
			</div>
		</div>
		
		<div  id="genderDiv">
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
			   <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].gender" name="gender" id="gender_male" value="male" checked="checked"></form:radiobutton>
		        <label for="gender_male">Male</label>
		        <form:radiobutton path="houseList[0].gender" name="gender" id="gender_female" value="female"></form:radiobutton>
		        <label for="gender_female">Female</label>
       		 </fieldset>	
			</div>
		</div>
		
		<div  id="vegNonvegDiv">
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
			   <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].veg_NonVeg" name="eatOption" id="veg" value="veg" checked="checked"></form:radiobutton>
		        <label for="veg">Veg</label>
		        <form:radiobutton path="houseList[0].veg_NonVeg" name="eatOption" id="nonVeg" value="nonVeg"></form:radiobutton>
		        <label for="nonVeg">Non-veg</label>
       		 </fieldset>	
			</div>
		</div>
		
		
		<div  id="roomTypeDiv">
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
			   <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].roomType" name="roomType" id="individual" value="individual" checked="checked"></form:radiobutton>
		        <label for="individual">Individual Room</label>
		        <form:radiobutton path="houseList[0].roomType" name="roomType" id="sharedRoom" value="sharedRoom"></form:radiobutton>
		        <label for="sharedRoom">Shared Room</label>
       		 </fieldset>	
			</div>
		</div>
		
		<div  id="pplAllwdDiv" >
			<div class="input-group-lg col-xs-6 col-2-right" >	
				<form:input path="houseList[0].pplAllowedMax" maxlength="2" min="0" max="10" value="2" type="number" class="form-control" placeholder="Max people allowed"></form:input>
			</div>
			<div class="input-group-lg col-xs-6 col-2-left">	
				<form:input path="houseList[0].pplStaying" maxlength="2"  min="0" max="10" value="2" type="number" class="form-control" placeholder="People already staying"></form:input>
			</div>
		</div>
		
		
		
		
		<div  id="durationDiv">
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
				<fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].duration" name="duration" id="shrtTerm" value="shortTerm" checked="checked"></form:radiobutton>
		        <label for="shrtTerm">Short term</label>
		        <form:radiobutton path="houseList[0].duration" name="duration" id="lngTerm" value="longTerm"></form:radiobutton>
		        <label for="lngTerm">Long term</label>
       		 </fieldset>	
			</div>
		</div>
		
		<div  id="startDateDiv" >
		
			<div class=" input-group-lg col-xs-6 col-2-right date" id="startDatepicker">	
				<form:input path="houseList[0].startDate"   class="form-control datepicker" placeholder="Start Date"></form:input>
			</div>
			<div class=" input-group-lg col-xs-6 col-2-left date" id="endDateDiv">	
				<form:input path="houseList[0].endDate"   class="form-control datepicker" placeholder="End Date"></form:input>
			</div>
		</div>
		
		
		
		<div  id="houseStyleDiv">
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
				<fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].houseStyle" name="houseStyle" id="apartment" value="apartment" checked="checked"></form:radiobutton>
		        <label for="apartment">Apartment</label>
		        <form:radiobutton path="houseList[0].houseStyle" name="houseStyle" id="rowHouse" value="rowHouse"></form:radiobutton>
		        <label for="rowHouse">Row house</label>
       		 </fieldset>	
			</div>
		</div>
		
		
		<div >
		
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">
			 <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].noOfRooms" name="rooms" id="roomsa" value="1bhk" checked="checked"></form:radiobutton>
		        <label for="roomsa">1 BHK</label>
		        <form:radiobutton path="houseList[0].noOfRooms" name="rooms" id="roomsb" value="2bhk"></form:radiobutton>
		        <label for="roomsb">2 BHK</label>
		        <form:radiobutton path="houseList[0].noOfRooms" name="rooms" id="roomsc" value="3bhk" ></form:radiobutton>
		        <label for="roomsc">3 BHK</label>
		        <form:radiobutton path="houseList[0].noOfRooms" name="rooms" id="roomsd" value="Single Room" ></form:radiobutton>
		        <label for="roomsd">single room</label>
       		 </fieldset>	
			</div>
		
		</div>
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group-2">	
			   <fieldset data-role="controlgroup" data-theme="b" data-type="horizontal">	
			   <form:radiobutton path="houseList[0].furnishedState" name="furnish" id="furnished" value="furnished" checked="checked"></form:radiobutton>
		        <label for="furnished">Furnished</label>
		        <form:radiobutton path="houseList[0].furnishedState" name="furnish" id="unfurnish" value="unfurnished"></form:radiobutton>
		        <label for="unfurnish">Unfurnished</label>
       		 </fieldset>	
			</div>
		</div>
		
		<div >
			<div class=" input-group-lg col-xs-6 col-2-right">	
				<form:input path="houseList[0].rent_amnt"  maxlength="2"  min="100" max="100000" value="500" type="number" class="form-control" placeholder="Rent"></form:input>
			</div>
			<div class=" input-group-lg col-xs-6 col-2-left">	
				<span><form:checkbox path="houseList[0].inclusiveFlag" ></form:checkbox>Inclusive</span>
			</div>
		</div>
		
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:input type="file" path="houseList[0].image"   class="form-control" placeholder="Upload pics"></form:input>
			</div>
		</div>
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:textarea  path="houseList[0].houseDesc" maxlength="200"  class="form-control" placeholder="House Description"></form:textarea >
			</div>
		</div>
		
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:input path="person_Name"  maxlength="50" class="form-control" required="required" placeholder="Name"></form:input>
			</div>
		</div>
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:input path="contact_no" type="tel" maxlength="14" class="form-control" required="required" placeholder="Contact No"></form:input>
			</div>
		</div>
		
		
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group">	
			  <form:input path="email" type="email"   class="form-control" required="required" placeholder="Email Id"></form:input>
			</div>
		</div>
		
		
		<div >
			<div class="input-group input-group-lg col-xs-12 cust-input-group btn-lg">	
			 <input type="submit" class="btn" style="width: 100%" value="Submit" onclick="onFormSubmit();"/>
			</div>
		</div>
		</table>
	</form:form>
	<div class="container">
   
</div>
	<%@include file="footer.jsp" %>
	
</body>

<script>

function onFormSubmit(){
	
	var roomValue = $("input[name='rooms']:checked"). val();
	var furnish = $("input[name='furnish']:checked"). val();
	var furnish = $("input[name='duration']:checked"). val();
	
	document.getElementById("houseList0.availableRooms").value = roomValue;
}
$(function(){
$("input[name='houseList[0].houseType']").change(function () {
    var customDiv = ['genderDiv','vegNonvegDiv','roomTypeDiv','pplAllwdDiv'];
	
	if ($(this).val() == "shared" && $(this).is(":checked")) {
		for(var i=0; i< customDiv.length; i++){
	    	$("#"+customDiv[i]).show();
	    	}
    }
    else{
    	for(var i=0; i< customDiv.length; i++){
    	$("#"+customDiv[i]).hide();
    	}
    }
});


$("input[name='houseList[0].duration']").change(function () {
	
	if ($(this).val() == "shortTerm" && $(this).is(":checked")) {
		
	    	$("#endDateDiv").show();
	    	
    }
    else{
    	
    	$("#endDateDiv").hide();
    }
});

$("#houseList0\\.startDate").datepicker({ format: 'dd/mm/yyyy',autoclose:true}).on('changeDate', function(ev){
    if (ev.date.valueOf() > endDate.valueOf()){
        $('#alert').show().find('strong').text('The start date must be before the end date.');
    } else {
        $('#alert').hide();
        startDate = new Date(ev.date);
        $('#date-start-display').text($('#date-start').data('date'));
    }
    $('#date-start').datepicker('hide');
});
$("#houseList0\\.endDate").datepicker({ format: 'dd/mm/yyyy',autoclose:true, useCurrent: false});


$.each( $('*'), function() { 
    if( $(this).width() > $('body').width()) {
        console.log("Wide Element: ", $(this), "Width: ", $(this).width()); 
    } 
});
});
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-85015603-1', 'auto');
  ga('send', 'pageview');

</script>
</html>