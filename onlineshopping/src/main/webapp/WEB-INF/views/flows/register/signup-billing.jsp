<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">


		<div class="offset-md-2 col-md-8">

			<div class="card bg-primary text-white">

				<div class="card-header">

					<h4>
						<center>Sign Up - Address</center>
					</h4>

				</div>


				<div class="card">
					<div class="card-body">

						<sf:form method="POST" class="form-horizontal" id="billingForm"
							modelAttribute="billing">


							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4" for="addressLineOne"><strong>Address
											Line One:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="addressLineOne"
											class="form-control" placeholder="Enter Address Line One" />

										<sf:errors path="addressLineOne" cssClass="help-block"
											element="em" />

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4" for="addressLineTwo"><strong>Address
											Line Two:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="addressLineTwo"
											class="form-control" placeholder="Enter Address Line Two" />

										<sf:errors path="addressLineTwo" cssClass="help-block"
											element="em" />

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4" for="city"><strong>City:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="city" class="form-control"
											placeholder="Enter City Name" />

										<sf:errors path="city" cssClass="help-block" element="em" />

									</div>
								</div>
							</div>


							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4" for="postalCode"><strong>Postal
											Code:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="postalCode" class="form-control"
											placeholder="XXXXXX" />

										<sf:errors path="postalCode" cssClass="help-block"
											element="em" />


									</div>
								</div>
							</div>

							<div class="form-control no-border">
							<div class="row">
								<label class="form-control-label col-md-4" for="state"><strong>State</strong></label>
								<div class="col-md-8">
									<sf:input type="text" path="state" class="form-control"
										placeholder="Enter State Name" />

									<sf:errors path="state" cssClass="help-block" element="em" />

								</div>
								</div>
							</div>


							<div class="form-control no-border">
							<div class="row">
								<label class="form-control-label col-md-4" for="country"><strong>Country</strong></label>
								<div class="col-md-8">
									<sf:input type="text" path="country" class="form-control"
										placeholder="Enter Country Name" />

									<sf:errors path="country" cssClass="help-block" element="em" />

								</div>
								</div>
							</div>


							<div class="form-control no-border">
								<div class="col-md-offset-4 col-md-8">
									<!-- submit button for moving to the personal -->
									<button type="submit" class="btn btn-primary"
										name="_eventId_personal">

										<i class="fa fa-chevron-left"
												aria-hidden="true"></i>
										Previous

									</button>

									<!-- submit button for moving to the confirm -->
									<button type="submit" class="btn btn-primary"
										name="_eventId_confirm">

										Next <i class="fa fa-chevron-right"
												aria-hidden="true"></i>

									</button>

								</div>
							</div>





						</sf:form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@include file="../shared/flows-footer.jsp"%>