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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./static/cart.css">

<body>
	<jsp:include page="navbar.jsp" />
	<div id='address' style='display: none'>
		<jsp:include page="address.jsp" />
	</div>

	<div id='confirmOrder' style='display: none'>
		<div class="panel">
			<jsp:include page="payment.jsp" />
		</div>
	</div>

	<div class="wrap cf" id='cart'>
		<h5 class="projTitle">Shopping Cart</h5>
		<c:if test="${empty cartItem}">
			<div class='items text-center'>
				<strong>No Item added to cart</strong>
			</div>
		</c:if>
		<c:if test="${not empty cartItem}">
			<div class="cart">

				<ul class="cartWrap">

					<c:forEach items="${cartItem}" var="book">


						<li class="items odd">

							<div class="infoWrap">
								<div class="cartSection">
									<img src=${book.bookImgUrl } alt="" class="itemImg" />
									<p class="itemNumber">${book.bookId }</p>
									<h3>${book.bookName }</h3>
									<p class="stockStatus">In Stock</p>
								</div>


								<div class="prodTotal cartSection">
									<p>${book.bookPrice}</p>
								</div>
								<div class="cartSection removeWrap">
									<a href="books?method=removeCart&bookId= ${book.bookId} "
										class="remove"> <i class="fa fa-trash" aria-hidden="true"></i>

									</a>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="subtotal cf">
				<ul>
					<li class="totalRow"><span class="label">Subtotal</span><span
						class="value">$ ${sessionScope.total}</span></li>

					<li class="totalRow"><span class="label">Shipping</span><span
						class="value">$5.00</span></li>

					<li class="totalRow"><span class="label">Tax</span><span
						class="value">$4.00</span></li>
					<li class="totalRow final"><span class="label">Total</span><span
						class="value">$ ${sessionScope.total +9}</span></li>
					<li class="totalRow"><a href="#" class="btn"
						onClick="checkOut()">Checkout</a></li>
				</ul>
			</div>
		</c:if>
	</div>
</body>
<script>
	function checkOut() {
		document.getElementById('address').style.display = '';
		document.getElementById('cart').style.display = 'none';
	}
	function order() {

		document.getElementById('payAddess1').innerHTML = document
				.getElementById('address1').value;
		document.getElementById('payAddess2').innerHTML = document
				.getElementById('address2').value;
		document.getElementById('payCity').innerHTML = document
				.getElementById('city').value;
		document.getElementById('perState').innerHTML = document
				.getElementById('state').value;

		document.getElementById('perPostcode').innerHTML = document
				.getElementById('postcode').value;

		document.getElementById('perMobile').innerHTML = document
				.getElementById('mobile').value;

		document.getElementById('perCountry').innerHTML = document
				.getElementById('country').value;

		document.getElementById('confirmOrder').style.display = '';
		document.getElementById('cart').style.display = 'none';
		document.getElementById('address').style.display = 'none';

	}
</script>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	></script>
</html>









