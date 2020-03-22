<%@ page session="true"%>

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
	margin-left: 2rem;
	transition: box-shadow 0.5s ease;
}

.book-Card:hover {
	box-shadow: 5px 4px 10px gray;
}

body {
	transition: all linear 0.1s;
	transition: all ease-out 0.2s 0.1s;
	overflow-y: auto; /* Hide vertical scrollbar */
	overflow-x: auto; /* Hide horizontal scrollbar */
}
/* width */
::-webkit-scrollbar {
	width: 10px;
	height: "50px";
}

/* Track */
::-webkit-scrollbar-track {
	background: #f1f1f1;
	height: "50px";
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #888;
	height: "50px";
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #555;
	height: "50px";
}

#booksContainer {
	transition-timing-function: linear;
}

.books {
	margin-top: 2rem;
	margin-left: 0.5rem;
}

.form {
	margin-top: 1rem;
	position: relative;
	width: 320 !important;
	color: black;
	border-radius: 1rem;
	font-size: 1rem;
	padding: 0.5rem;
	background: white;
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
@media screen and (max-width: 800px) {
	.nav-link {
		text-align: Center;
		
	}
}
.adminContainer {
	height: 90%;
	background-size: contain;
	background-image:
		url(https://i.pinimg.com/originals/8b/f2/80/8bf2805….jpg);
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
</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<body>
	<jsp:include page="navbar.jsp" />
	<div id="booksContainer">

		<div class="container ">
			<br />
			<div class="row justify-content-center">
				<div class="col-12 col-md-10 col-lg-8">
					<form action='books' method='GET'>
						<div class="input-group">

							<input type='hidden' name='method' id='method' /> <select
								style="border-radius: 20px 0px 0px 20px" class="form-control"
								id='search' name='search' required>
								<option value=''>Select Category....</option>
								<option value='All'>All</option>
								<option value='Horror'>Horror</option>
								<option value='Drama'>Drama</option>
								<option value='Comedy'>Comedy</option>
							</select>
							<button type="submit" class="btn btn-outline-primary"
								style='border-radius: 0px 20px 20px 0px;'
								onClick="searchCaterogy()">Search</button>

						</div>
					</form>
				</div>
			</div>
		</div>

		<div class='container books'>
			<c:if test="${not empty  requestScope.status}">
				<div class="alert alert-info">
					<strong>${requestScope.status}</strong>
				</div>
			</c:if>

			<div class='panel panel'>
				<span>Category : <strong>${sessionScope.category}</strong>
				</span>
			</div>
			<c:if test="${empty  sessionScope.books}">
				<br />
				<div class="alert alert-info">NO Book Found</div>
			</c:if>
			<c:forEach items="${books}" var="book">

				<div class="card book-Card" title='By ${book.authorName}'
					style="width: 15rem; display: inline-block; border: 0">
					<%-- <span class="card-text">Category : ${book.bookCategory} </span> --%>
					<img class="card-img-top book-image" src="${book.bookImgUrl}"
						alt="Card image cap">
					<div class="card-body" style="padding: 2px !important">
						<h5 class="card-title">${book.bookName}</h5>
						<span class="card-text">Price : ${book.bookPrice} $ </span> <a
							href="books?method=addToCart&bookId= ${book.bookId} "
							class="btn btn-primary btn-block" title="Add to cart"
							onClick='addToCart()'> ADD TO <i
							class="fa fa-cart-arrow-down" aria-hidden="true"></i>
						</a>

					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</body>


<script src="./static/app.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	></script>
</html>
