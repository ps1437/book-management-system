<div class="text-center bookstore">
				<b>Welcome to Book Store</b>
			</div>

			<hr />
<div class="text-center text-primary">
	<b>Sign Up</b>
</div>


<form action="register" method="POST" onSubmit="return checkPwd()">
	<div class="form-group">
		<label for="UserId">UserId</label> <input type="email"
			class="form-control" name="luserid" required
			aria-describedby="luserid" />
	</div>
	<div class="form-group">
		<label for="Password">Password</label> <input type="password"
			class="form-control" name="lpassword" required id=lpassword />
	</div>

	<div class="form-group">
		<label for="Password">Confirm Password</label> <input type="password"
			class="form-control" name="cpassword" required id=cpassword />
	</div>

	<div class="text-center">
		<button type="submit" class="btn btn-outline-primary btn-outline-custome">Submit</button>
		<a href="#" onClick="switchTab('login')">Login</a>
	</div>
</form>