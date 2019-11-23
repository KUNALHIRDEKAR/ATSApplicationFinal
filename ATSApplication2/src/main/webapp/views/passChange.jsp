<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	$(function() {
		$('form[id="second_form"]').validate({
			rules : {
				password : {
					required : true,
					minlength : 5
				},
				password_confirm : {
					required : true,
					minlength : 5,
					equalTo : "#password"
				}
			}
		});

	});
</script>
</head>
<body>
	<div align="center" style="color: blue;"><h1>Your Account registration Is Almost Done please change your Password and Unlock Your account</h1></div>
	<div align="center">
		<form:form id="second_form" modelAttribute="userCommand"
			action="/saveChangedPassword?userId=${userId}" method="POST" >
			<table>
				<tr>
					<td>Email</td>
					<td><form:input path="email"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:password path="pazzword" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>