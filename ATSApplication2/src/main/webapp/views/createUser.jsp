<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script>
	$(function() {
		$("#dob").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : "1950:2019"
		});

		$("#email").blur(function () {

			var enteredEmail = $("#email").val();
			$.ajax({
				url : '/emailCheck'.
				data :{ 
					email : enteredEmail;
					},
					dataType :'json',
					success :function(response){
						},
						error : function(response)
				})
		    alert("Handler for .blur() called.");

		});

	});
</script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {
		$('form[id="second_form"]').validate({
			rules : {
				firstName : 'required',
				lastName : 'required',
				email : {
					required : true,
					email : true,
				},
					},
				phno : {
					required : true,
					minlength : 8,
				}
			},
			messages : {
				firstName : 'This field is required',
				lastName : 'This field is required',
				email : 'Enter a valid email',
				phno : {
					minlength : 'Password must be at least 10 characters long'
				}
			},
			submitHandler : function(form) {
				form.submit();
			}
		});

	});
</script>
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
	width: 50%;
	margin-left: 500px !important; /* Center the DIV horizontally */
	margin-top: 50px;
	
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
td{
padding-bottom: 20px;

}
</style>
</head>
<body>
	<div class="fixed-header">
		<div class="container">
			<nav>
				<a href="#">Home</a> <a href="#">About</a> <a href="#">Products</a>
				<a href="#">Services</a> <a href="#">Contact Us</a>
			</nav>
		</div>
	</div>
	<div class="container2">
		<form:form id="second_form" action="/saveNewUserField" method="post"
			modelAttribute="userCommand">

			<table>
				<tr>
					<td>First Name</td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><form:input path="lastName" /></td>

				</tr>

				<tr>
					<td>Email</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><form:radiobutton path="gender" value="male" />Male <form:radiobutton
							path="gender" value="female" />Female</td>
					<td><form:errors path="gender" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><form:input path="phno" /></td>

				</tr>
				<tr>
					<td>DOB</td>
					<td><form:input path="dob" /></td>
				</tr>
				<tr>

					<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form:form>

	</div>
	<div class="fixed-footer">
		<div class="container">Copyright &copy; 2016 Your Company</div>
	</div>
</body>
</html>