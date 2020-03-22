<%@ page session="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>
<link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./static/app.css">

<nav
	class="navbar navbar-expand-lg sticky-top  navbar-light  bg-light-nav"
	id='nav'>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<span class="navbar-brand"> <i class="fa fa-book"
			aria-hidden="true"></i> Book Store
		</span>
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item  "><a
				class="nav-item nav-link active itemName" onClick="tab('home')"
				href='nav?method=home'>Home <span class="sr-only">(current)</span>
			</a></li>
			<c:if test='${not empty sessionScope.isAdmin}'>
				<li class="nav-item "><a
					class="nav-item nav-link active itemName" onclick="tab('admin')"
					href='nav?method=A'>Admin</a></li>
			</c:if>
		</ul>
		<ul class="nav navbar-nav navbar-right my-2 my-lg-0">

			<li style='padding: 0rem 1rem;font-size: 1.4rem;'><span
				class="fa fa-user-circle-o badge userName icons"> Welcome
					${sessionScope.username}</span></li>
			<li style='padding: 0rem 1rem; '><a
				href="nav?method=cart" title="cart"><span
					class="fa fa-shopping-cart badge badge-light icons">
						${sessionScope.cartItem.size()}</span> </a></li>
			<li style='padding: 0rem 1rem;'><a title="logout" id="logout"
				href="login"><span
					class="fa fa-sign-out badge badge-light icons"> </span> </a></li>
		</ul>
	</div>
</nav>












