<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">


		<div class="offset-md-2 col-md-8">

			<div class="card bg-primary text-white">

				<div class="card-header">

					<h4>
						<center>Sign Up - Personal</center>
					</h4>

				</div>


				<div class="card">
					<div class="card-body">

						<sf:form method="POST" class="form-horizontal" id="registerForm"
							modelAttribute="user">


							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>First
											Name:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="firstName" class="form-control"
											placeholder="First Name" />

										<sf:errors path="firstName" cssClass="help-block" element="em" />

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>Last
											Name:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="lastName" class="form-control"
											placeholder="Last Name" />

										<sf:errors path="lastName" cssClass="help-block" element="em" />

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>Email:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="email" class="form-control"
											placeholder="abc@zyx.com" />

										<sf:errors path="email" cssClass="help-block" element="em" />

									</div>
								</div>
							</div>


							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>Contact
											Number:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="contactNumber"
											class="form-control" placeholder="XXXXXXXXXX" maxlength="10" />

										<sf:errors path="contactNumber" cssClass="help-block"
											element="em" />


									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>Password:</strong></label>
									<div class="col-md-8">
										<sf:input type="password" path="password" class="form-control"
											placeholder="Password" />

										<sf:errors path="password" cssClass="help-block" element="em" />


									</div>
								</div>
							</div>




							 <div class="form-control no-border">
							<div class="row">
        <label class="form-control-label col-md-4">Confirm Password</label>
        <div class="col-md-8">
         <sf:input type="password" path="confirmPassword" class="form-control"
          placeholder="Re-enter Password" />
          
          <sf:errors path="confirmPassword" cssClass="help-block" element="em"/> 
          
        </div>
       </div> 




							<!-- radio button using bootstrap class of radio-inline -->
							<div class="form-control no-border">
								<div class="row">
									<label class="form-control-label col-md-4"><strong>Select
											Role:</strong></label>
									<div class="col-md-8">
										<label class="radio-inline"> <sf:radiobutton
												path="role" value="USER" checked="checked" /> User
										</label> <label class="radio-inline"> <sf:radiobutton
												path="role" value="SUPPLIER" /> Supplier
										</label>
									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<div class="col-md-offset-4 col-md-8">
										<button type="submit" class="btn btn-primary"
											name="_eventId_billing">

											Next - Billing <i class="fa fa-chevron-right"
												aria-hidden="true"></i>

										</button>

									</div>
								</div>
							</div>



						</sf:form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@include file="../shared/flows-footer.jsp"%>