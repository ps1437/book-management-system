<%@ page session="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Book Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous" />
</head>
<style>
.login {
    box-shadow: inset -150px -3px 0px white;
    position: relative;
    width: 350px !important;
    color: black;
    font-size: 1rem;
    padding: 0.5rem 1.8rem;
    background-color: #ffffff;
    width: 100px;
    height: 55%;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    margin-top: 7rem;
s
}

body {
	background-image:
		url("https://source.unsplash.com/1600x900/?books,library");
}

.overlay {
	width: 100%;
	position: absolute;
	color: #504848;
	height: 100vh;
	position: absolute;
	background-color: #191717;
	opacity: 0.6;
}

.bookstore {
	background-color: #069dff;
	color: white;
	padding: 6px;
}

.storename {
	font-size: 2rem;
	color: white;
	float: right;
	position: relative;
	padding: 17px;
}

.alert {
	position: relative;
	padding: 3px !important;
	border-radius: .25rem !important;
	margin-bottom: 0 !important;
	-webkit-transition: opacity 3s ease-in-out;
    -moz-transition: opacity 3s ease-in-out;
    -ms-transition: opacity 3s ease-in-out;
    -o-transition: opacity 3s ease-in-out;
     opacity: 1;
}
.btn:link, .btn:visited {
	text-decoration: none;
	font-family: 'Montserrat', sans-serif;
	letter-spacing: -0.015em;
	font-size: 1em;
	padding: 1em 3em;
	color: #fff;
	background: #82ca9c;
	font-weight: bold;
	border-radius: 50px;
	float: right;
	text-align: right;
	-webkit-transition: all 0.25s linear;
	-moz-transition: all 0.25s linear;
	-ms-transition: all 0.25s linear;
	-o-transition: all 0.25s linear;
	transition: all 0.25s linear;
}

.btn:after {
	content: "\276f";
	padding: 0.5em;
	position: relative;
	right: 0;
	-webkit-transition: all 0.15s linear;
	-moz-transition: all 0.15s linear;
	-ms-transition: all 0.15s linear;
	-o-transition: all 0.15s linear;
	transition: all 0.15s linear;
}

.btn:hover, .btn:focus, .btn:active {
	background: #f69679;
}

.btn:hover:after, .btn:focus:after, .btn:active:after {
	right: -10px;
}
</style>



<body>
	<div class="overlay"></div>
	<span class='storename'> <b>Book Store</b>
	</span>

	<div class="container">

		<div class="container login " id='login'>
			<div class="text-center bookstore">
				<b>Welcome to Book Store</b>
			</div>

			<hr />

			<div class="text-center">
				<b>Login</b>
			</div>
			<c:if test="${not empty  requestScope.status}">


				<div class='alert alert-danger'>${requestScope.status}</div>

			</c:if>

			<form action="login" method="POST">
				<div class="form-group">
					<label for="UserId">UserId</label> <input type="email"
						class="form-control" name="userid" required
						aria-describedby="UserId" />
				</div>
				<div class="form-group">
					<label for="Password">Password</label> <input type="password"
						class="form-control" name="password" required id=password />
				</div>

				<div class="text-center pull-right">
					<button type="submit" class="btn btn-outline-primary  btn-outline-custome">Login</button>
					<a href="#" onClick="switchTab('register')">Register Now</a>
				</div>
			</form>
		</div>


		<div class="container login " id='regis'
			style="display: none; height: 55%">

			<jsp:include page="register.jsp" />

		</div>
	</div>

</body>
<script src="./static/app.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
</html>
