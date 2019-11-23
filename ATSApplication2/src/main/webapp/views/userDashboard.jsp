<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
.error {
	color: red;
	margin-left: 5px;
}

label.error {
	display: inline;
}
</style>
<style>
/* Add some padding on document's body to prevent the content
    to go underneath the header and footer */
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.container {
	width: 80%;
	margin: 0 auto; /* Center the DIV horizontally */
}

.container2 {
	width: 200%;
	margin: 0 auto; /* Center the DIV horizontally */
	align-items: center;
}

.fixed-header, .fixed-footer {
	width: 100%;
	position: fixed;
	background: #333;
	padding: 10px 0;
	color: #fff;
}

.fixed-header {
	top: 0;
}

.fixed-footer {
	bottom: 0;
}
/* Some more styles to beutify this example */
nav a {
	color: #fff;
	text-decoration: none;
	padding: 7px 25px;
	display: inline-block;
}

.container p {
	line-height: 200px; /* Create scrollbar to test positioning */
}
</style>
</head>
<body>
	<div class="fixed-header">
		<div class="container">
			<nav>
				<a href="/getHomePage">Home</a> <a href="#">About</a> <a href="#">Products</a>
				<a href="#">Services</a> <a href="#">Contact Us</a>
			</nav>
		</div>
	</div>
	

	<div class="container2">
		
		<h1 style="align-content: center; color: blue;">User DashBoard</h1>

		<div>
			<h3>UserDetails</h3>
			<form:form id="second_form" action="/saveNewUserField" method="post"
				modelAttribute="userCommand">
				<table>

					<tr>
						<td>First Name::</td>
						<td>${userData.firstName}</td>
					</tr>
					<tr>
						<td>Last Name::</td>
						<td>${userData.lastName}</td>
					</tr>
					<tr>
						<td>Email::</td>
						<td>${userData.email}</td>
					</tr>
					<tr>
						<td>Gender::</td>
						<td>${userData.gender}</td>
					</tr>
					<tr>
						<td>DOB::</td>
						<td>${userData.dob}</td>
					</tr>
					<tr>
						<td>Role::</td>
						<td>${userData.role}</td>
					</tr>
				</table>
				<a href="/getHomePage">LogOUt</a>
			</form:form>

		</div>
		<div class="fixed-footer">
			<div class="container">Copyright &copy; 2016 Your Company</div>
		</div>
</body>
</html>