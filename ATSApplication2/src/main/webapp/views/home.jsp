<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

.row {
	display: flex;
}

/* Create two equal columns that sits next to each other */
.column1 {
	flex: 60%;
	padding: 10px;
	height: 600px; /* Should be removed. Only for demonstration */
}

.column {
	flex: 40%;
	padding: 10px;
	height: 600px; /* Should be removed. Only for demonstration */
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
header {
	text-align: right;
	font-size: 1px;
	color: white;
}
</style>

<style>
<
style>* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}
nav a {
	color: #fff;
	text-decoration: none;
	padding: 7px 25px;
	display: inline-block;
}

.container {
	width: 80%;
	margin: 0 auto; /* Center the DIV horizontally */
}
</style>
<style>
* {
  box-sizing: border-box;
}


.row {
	display: flex;
}


body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create three equal columns that floats next to each other */
.column1 {
  float: left;
  width: 60%;
  padding: 30px;
}
.column2 {
  float: right;
  width: 40%;
  padding: 15px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:600px) {
  .column {
    width: 100%;
  }
}
.ribbon {
   position: relative;
   top: -16px;
   right: -706px;
}
</style>


</head>
<body>

	<div class="header">
<div> <h1>FastTrack Electronic Toll collection </h1>
  <p>Project under Government of Canada</p>
</div>

<div class="topnav">
  <a href="#">About</a>
  <a href="#">Contact</a>
  <a href="#">Help</a>
</div>
	<div class="row">
		<div class="column1" style="background-color: #aaa;">
			<h2></h2>
			<div class="slideshow-container">

				<div class="mySlides fade">
					<div class="numbertext">1 / 3</div>
					<img src="https://i.ytimg.com/vi/VWGFr7g0qxU/maxresdefault.jpg"
						style="width: 100%">
					<div class="text">Caption Text</div>
				</div>

				<div class="mySlides fade">
					<div class="numbertext">2 / 3</div>
					<img
						src="https://c8.alamy.com/comp/W9MKD9/rusocin-poland-13th-august-2019-driver-in-a-dacia-sandero-car-with-ambergo-application-running-on-a-smartphone-approaching-tool-plaza-is-seen-on-a1-amberone-motorway-ambergo-fully-launched-by-the-gdansk-transport-company-gtc-at-the-end-of-july-2019-is-an-automatic-payment-system-based-on-automatic-number-plate-recognition-system-requiring-installation-of-a-mobile-application-and-card-connecting-for-payment-the-system-was-implemented-by-arcus-infrastructure-partners-vadim-pacajev-alamy-live-news-W9MKD9.jpg"
						style="width: 100%">
					<div class="text">Caption Two</div>
				</div>

				<div class="mySlides fade">
					<div class="numbertext">3 / 3</div>
					<img
						src="https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/10/15/743663-expressway-mumbai-pune-101518.jpg"
						style="width: 100%">
					<div class="text">Caption Three</div>
				</div>

			</div>
			<br>

			<div style="text-align: center">
				<span class="dot"></span> <span class="dot"></span> <span
					class="dot"></span>
			</div>

		</div>
		<div class="column" style="background-color: #bbb;">
			<form:form action="/userSignIn" modelAttribute="emailAndPassword"
				method="post">
				
				<table>
					<tr>
						<td>Email</td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><form:input path="pazzword" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="SignIn" /></td>
					</tr>
					<tr>
						<td><hr></td>
						
					</tr>
					<tr>
						<td><a href="#">Forget Password?</a>/<a href="/createUser">SignUp</a></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>



</body>
<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>


</html>