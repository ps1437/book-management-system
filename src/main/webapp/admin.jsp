
<%@ page session="true" autoFlush="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.syscho.book.vo.Book"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Book Management</title>
</head>
<style>
.book-image {
	width: 250px;
	height: 250px;
	padding: 0.3rem;
}

.card-body {
	padding: 0.5rem !important;
}

.card-title {
	margin-bottom: 0.3rem !important;
}

.book-Card {
	margin-top: 1rem;
	padding: 0.5rem;
}

a {
	cursor: "pointer";
}

.books {
	margin-top: 2rem;
	margin-left: 0.5rem;
}

.addform {
	margin-top: 1rem;
	position: relative;
	width: 390 !important;
	color: black;
	font-size: 1rem;
	padding: 0.5rem;
	background-color: #f6f9f9;
}

.overlay {
	width: 100%;
	position: absolute;
	color: #504848;
	height: 100vh;
	position: absolute;
	background-color: #191717;
	opacity: 0.8;
}

.adminContainer {
	height: 90%;
	background-size: contain;
}

.fa-sign-out {
	font-size: 2rem !important;
	color: white;
	float: right;
}

.fa-shopping-cart {
	font-size: 2rem !important;
	color: white;
	float: right;
}

.bookHeader {
	padding: 10px;
	background-color: #52cbff;
	color: white !important;
	font-size: 1.2rem;
	padding: 0.5rem;
	margin-bottom: 1rem;
}


.overlay {
	width: 100%;
	position: absolute;
	color: #504848;
	height: 104vh;
	position: absolute;
	background-color: #191717;
	opacity: 0.8;
}

.adminContainer {
	transition: all linear 0.1s;
	transition: all ease-out 0.2s 0.1s;
}
</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	 />
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<body>
	<div class="overlay"></div>

	<jsp:include page="navbar.jsp" />

	<div class='adminContainer '>
		<div class="container addform ">
			<div class='bookHeader text-center'>ADD BOOK</div>

			<form method="POST" action="books">
				<div class="form-group">
					<label for="Name" class='text-muted'>Book Name</label> <input
						type="text" class="form-control" id="bookName" name="bookName"
						aria-describedby="bookName" />
				</div>
				<div class="form-group">
					<label for="bookPrice" class='text-muted'>Price</label> <input
						type="number" class="form-control" name="bookPrice" required />
				</div>
				<div class="form-group">
					<label for="bookUrl" class='text-muted'>Book Image Url</label> <input
						type="text" class="form-control" name="bookUrl" />
				</div>
				<div class="form-group">
					<label for="bookAuthor" class='text-muted'>Author Name</label> <input
						type="text" class="form-control" name="bookAuthor" required />
				</div>
				<div class="form-group">
					<label for="bookCat" class='text-muted'>Category</label> <select
						class="form-control" id="bookCat" name="bookCat">
						<option></option>
						<option value="Comedy">Comedy</option>
						<option value="Drama">Drama</option>
						<option value="Horror">Horror</option>

					</select>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-outline-primary ">ADD
						BOOK</button>
				</div>


			</form>
		</div>
	</div>
</body>
</html>

