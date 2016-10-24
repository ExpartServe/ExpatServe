<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="postAdd" modelAttribute="addPostForm">
		<table>
			<tr>
				<td><form:label path="person_Name">Name</form:label></td>
				<td><form:input path="person_Name" /></td>
			</tr>
			<tr>
				<td><form:label path="contact_no">Contact No</form:label></td>
				<td><form:input path="contact_no"/></td>
			</tr>
			<tr>
				<td><form:label path="email">email</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].addrsLine1">addrsLine1</form:label></td>
				<td><form:input path="houseList[0].addrsLine1" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].addrsLine2">addrsLine2</form:label></td>
				<td><form:input path="houseList[0].addrsLine2" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].postCode">postCode</form:label></td>
				<td><form:input path="houseList[0].postCode" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].city">city</form:label></td>
				<td><form:input path="houseList[0].city" /></td>
			</tr>
			
			
			<tr>
				<td><form:label path="houseList[0].houseDesc">houseDesc</form:label></td>
				<td><form:input path="houseList[0].houseDesc" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].noOfVacancies">noOfVacancies</form:label></td>
				<td><form:input path="houseList[0].noOfVacancies" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].availableRooms">availableRooms</form:label></td>
				<td><form:input path="houseList[0].availableRooms" /></td>
			</tr>
			<tr>
				<td><form:label path="houseList[0].rent_amnt">rent_amnt</form:label></td>
				<td><form:input path="houseList[0].rent_amnt" /></td>
			</tr>
			
			
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>