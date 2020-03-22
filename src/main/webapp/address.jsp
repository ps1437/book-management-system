<div class="row addressForm">
	<div class="col-md-8 col-md-offset-4">
		<form class="form-horizontal" role="form">
			<fieldset>

				<!-- Form Name -->
				<legend>Address Details</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="textinput">Line
						1</label>
					<div class="col-sm-12">
						<input type="text" placeholder="Address Line 1" required
							id='address1' class="form-control">
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="textinput">Line
						2</label>
					<div class="col-sm-12">
						<input type="text" placeholder="Address Line 2" required
							id='address2' class="form-control">
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="textinput">City</label>
					<div class="col-sm-12">
						<input type="text" placeholder="City" class="form-control"
							id='city'>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-sm-8 control-label" for="textinput">State</label>
					<div class="col-sm-8">
						<input type="text" placeholder="State" class="form-control"
							id='state' required>
					</div>

					<label class="col-sm-8 control-label" for="textinput">Postcode</label>
					<div class="col-sm-8">
						<input type="number" placeholder="Post Code" class="form-control"
							id='postcode' required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-12 control-label" for="textinput">Mobile
						Number</label>
					<div class="col-sm-12">
						<input type="number" placeholder="Mobile Number"
							class="form-control" id='mobile' required>
					</div>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="textinput">Country</label>
					<div class="col-sm-12">
						<input type="text" placeholder="Country" class="form-control"
							id='country' required>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-12">
						<div class="pull-right">
							<a type="button" class="btn btn-default" href="#"
								onClick='order()'>Order</a>
						</div>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
</div>
