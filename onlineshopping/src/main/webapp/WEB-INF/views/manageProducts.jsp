<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">

	<div class="row">

		<c:if test="${not empty message}">
			<div class="col-md-12">
				<div class="alert alert-success alert-dismissable">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>${message}</strong>
				</div>
			</div>
		</c:if>


		<div class="offset-md-2 col-md-8">

			<div class="card bg-primary text-white">

				<div class="card-header">

					<h4>
						<center>Product Management</center>
					</h4>

				</div>


				<div class="card">
					<div class="card-body">

						<!-- Form Elements -->
						<sf:form class="form-horizontal" modelAttribute="product"
							action="${contextRoot}/manage/products" method="POST"
							enctype="multipart/form-data">

							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="name"><strong>Enter
											Product Name:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="name" id="name"
											placeholder="Product Name" class="form-control" />
										<sf:errors path="name" cssClass="help-block" element="em"></sf:errors>

									</div>
								</div>
							</div>




							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="brand"><strong>Enter
											Brand Name:</strong></label>
									<div class="col-md-8">
										<sf:input type="text" path="brand" id="brand"
											placeholder="Brand Name" class="form-control" />
										<sf:errors path="brand" cssClass="help-block" element="em"></sf:errors>

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="description"><strong>Product
											Description:</strong></label>
									<div class="col-md-8">
										<sf:textarea path="description" id="description" rows="4"
											placeholder="Write a Product Description"
											class="form-control"></sf:textarea>
										<sf:errors path="description" cssClass="help-block"
											element="em"></sf:errors>

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="unitPrice"><strong>Enter
											Unit Price:</strong></label>
									<div class="col-md-8">
										<sf:input type="number" path="unitPrice" id="unitPrice"
											placeholder="Unit Price In &#8377;" class="form-control" />
										<sf:errors path="unitPrice" cssClass="help-block" element="em"></sf:errors>

									</div>
								</div>
							</div>


							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="quantity"><strong>
											Quantity Available:</strong></label>
									<div class="col-md-8">
										<sf:input type="number" path="quantity" id="quantity"
											placeholder="Quantity Available" class="form-control" />

									</div>
								</div>
							</div>

							<!-- File element for Image Upload  -->
							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="file"><strong>
											Select an Image:</strong></label>
									<div class="col-md-8">
										<sf:input type="file" path="file" id="file"
											class="form-control" />

									</div>
								</div>
							</div>



							<div class="form-control no-border">
								<div class="row">
									<label class="control-label col-md-4" for="categoryId"><strong>
											Select Category:</strong></label>
									<div class="col-md-8">
										<sf:select class="form-control" path="categoryId"
											id="categoryId" items="${categories}" itemLabel="name"
											itemValue="id" />

									</div>
								</div>
							</div>






							<div class="form-control no-border">
								<div class="row">
									<div class="offset-md-4 col-md-8">
										<input type="submit" path="submit" id="submit" value="Submit"
											class="btn btn-primary" />

										<!-- Hidden fields for Products -->
										<sf:hidden path="id" />
										<sf:hidden path="code" />
										<sf:hidden path="supplierId" />
										<sf:hidden path="active" />
										<sf:hidden path="purchases" />
										<sf:hidden path="views" />


									</div>
								</div>
							</div>







						</sf:form>


					</div>
				</div>



			</div>


		</div>



	</div>


</div>

