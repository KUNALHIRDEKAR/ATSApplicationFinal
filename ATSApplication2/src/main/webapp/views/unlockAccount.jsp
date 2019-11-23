<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>Password and Confirm Password Validation Using Jquery</title>
<script type="text/javascript"
	src="https://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript"
	src="https://www.technicalkeeda.com/js/javascripts/plugin/jquery.validate.js"></script>
<script>
	function validatePassword() {
		$('form[id="loginForm"]').validate({
			rules : {
				newPazzword : {
					required : true,
					minlength : 5
				},
				pazzword_confirm : {
					required : true,
					minlength : 5,
					equalTo : "#newPazzword"
				}
			}
		});

	}
</script>
</head>

<body>
	<h1 align="center" style="color: blue;">Change and Confirm
		Passwords!!</h1>
	<div align="center">
		<form:form action="/confirmAndSavePass?userId=${userId}" method="Post"
			modelAttribute="userCmd" id="loginForm" name="loginForm">
			<table cellpadding="0" border="1">
				<tr>
					<td>Old Password</td>
					<td><form:input tabindex="1" size="40" path="pazzword" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input tabindex="1" size="40" path="newPazzword"
							id="newPazzword" /></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><form:input tabindex="1" size="40" path="pazzword_confirm"
							id="pazzword_confirm" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input tabindex="3"
						type="submit" value="Submit" onClick="validatePassword();" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>

</html>
