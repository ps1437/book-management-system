<%@ page session="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.UUID"%>

<%@ page isELIgnored="false"%>
<div class="payment" style='margin-top: 5rem;'>
	<div class="card-body">
		<div>
			<b>Thank You For Your Order!</b>
			<div>
				<hr />

				<div class='card-title'>Order Confirmation #
					${UUID.randomUUID()}</div>
				<p class="card-text">Name : ${sessionScope.username}</p>
				<p class="card-text">
					<b>Address:</b>
				</p>
				<div class='address'>
					<p class="card-text" id="payAddess1"></p>
					<p class="card-text" id="payAddess2"></p>
					<b>City:-</b>&nbsp;<span class="card-text" id="payCity"></span><br />
					<b>State:-</b>&nbsp;<span class="card-text" id="perState"></span><br />
					<b>Post Code:-</b>&nbsp;<span class="card-text" id="perPostcode"></span>
					<br /> <b>Country:-</b>&nbsp;<span class="card-text"
						id="perCountry"></span> <br /> <b>Mobile No:-</b>&nbsp;<span
						class="card-text" id="perMobile"></span>
				</div>

				<div class='card-footer'>If you have any questions, just reply
					to this email—we're always happy to help out.</div>
			</div>
		</div>
	</div>
</div>