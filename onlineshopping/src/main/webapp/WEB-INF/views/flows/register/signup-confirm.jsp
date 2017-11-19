<%@include file="../shared/flows-header.jsp"%>

<div class="container">
	<div class="row">

		<!-- column to display the personal details -->
		<div class="col-md-6">

			<div class="card bg-primary text-white">

				<div class="card-header">
					<h4>Personal Details</h4>
				</div>


				<div class="card bg-light ">
					<div class="card-body">

						<div class="text-center">

						<h4><p class="text-dark">${registerModel.user.firstName}
							${registerModel.user.lastName}</p></h4>

						<h5><p class="text-dark">Email: ${registerModel.user.email}</p></h5>

						<h5><p class="text-dark">Contact Number: ${registerModel.user.contactNumber}</p></h5>

						<h5><p class="text-dark">Role: ${registerModel.user.role}</p></h5>

					</div>


					</div>
				</div>



				<%-- <div class="card-footer">
					<a href="${flowExecutionUrl}&_eventId_personal"
						class="btn btn-primary">Edit</a>

				</div> --%>



				<div class="row">
					<div class="offset-md-4 col-md-8">
						<a href="${flowExecutionUrl}&_eventId_personal"
							class="btn btn-primary">Edit</a>

					</div>
				</div>




			</div>

		</div>

		<!-- column to display the address  -->
		<div class="col-md-6">

			<div class="card bg-primary text-white">
				<div class="card-header">
					<h4>Billing Address</h4>
				</div>
				
				<div class="card bg-light  ">
				<div class="card-body">
					 <div class="text-center">
						<h4><p class="text-dark">${registerModel.billing.addressLineOne}</p></h4>
						<h4><p class="text-dark">${registerModel.billing.addressLineTwo}</p></h4>
						<h4><p class="text-dark">${registerModel.billing.city}-${registerModel.billing.postalCode}</p></h4>
						<h4><p class="text-dark">${registerModel.billing.state}-${registerModel.billing.country}</p></h4>
					</div> 
				</div>
				</div>
				
				
				
				
				<%-- <div class="card-footer">
					<!-- anchor to move to the edit of address -->
					<a href="${flowExecutionUrl}&_eventId_billing"
						class="btn btn-primary">Edit</a>
				</div> --%>
				
				<div class="row">
					<div class="offset-md-4 col-md-8">
						<a href="${flowExecutionUrl}&_eventId_billing"
						class="btn btn-primary">Edit</a>
					</div>
				</div>
				
				
			
				
			</div>

		</div>

	</div>

	
	<br />
	
	<!-- to provide the confirm button after displaying the details -->
	
	
	<div class="row">
		<div class="col-md-4 offset-md-4">

			<div class="text-center">
				<!-- anchor to move to success page -->
				<a href="${flowExecutionUrl}&_eventId_submit"
					class="btn btn-primary">Confirm</a>

			</div>

		</div>
	</div>
	
	
	
	
</div>
<%@include file="../shared/flows-footer.jsp"%>