<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">

	<div class="container">
		<img class="navbar-brand"
			src="<c:url value="/assets/images/logo.jpg"/>" width="50px"
			height="50px" alt="Shopping Store" style="color: red"></img> <a
			class="navbar-brand" href="${contextRoot}/home"><h3>Shopping
				Way!!!</h3></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li id="listProducts" class="nav-item"><a class="nav-link"
					href="${contextRoot}/show/all/products"><h5>
							<i class="fa fa-product-hunt" aria-hidden="true"></i> Products
						</h5></a></li>

				<security:authorize access="isAnonymous()">
					<li id="register" class="nav-item"><a class="nav-link"
						href="${contextRoot}/register"><h5>
								<i class="fa fa-registered" aria-hidden="true"></i> Register
							</h5></a></li>

					<li id="login" class="nav-item"><a class="nav-link"
						href="${contextRoot}/login"><h5>
								<i class="fa fa-sign-in" aria-hidden="true"></i> Login
							</h5></a></li>
				</security:authorize>


				<li id="about" class="nav-item"><a class="nav-link"
					href="${contextRoot}/about"><h5>About Us</h5></a></li>


				<security:authorize access="hasAuthority('ADMIN')">
					<li id="manageProducts" class="nav-item"><a class="nav-link"
						href="${contextRoot}/manage/products"><h5>Manage Products</h5></a></li>
				</security:authorize>


				<security:authorize access="isAuthenticated()">
					<li class="dropdown"><a href="javascript:void(0)"
						class="btn btn-primary dropdown-toggle" id="dropdownMenu1"
						data-toggle="dropdown">${userModel.fullName} <span
							class="caret"></span>

					</a>

						<ul class="dropdown-menu">

							<security:authorize access="hasAuthority('USER')">
								<li><a href="${contextRoot}/cart"> <i
										class="fa fa-shopping-cart" aria-hidden="true"></i> <span
										class="badge">${userModel.cart.cartLines}</span> - &#8377;
										${userModel.cart.grandTotal}


								</a></li>
								<li class="dropdown-divider" role="separator"></li>
							</security:authorize>

							
							<li><a href="${contextRoot}/perform-logout">Logout</a></li>


						</ul></li>
				</security:authorize>


			</ul>




		</div>
	</div>
</nav>


<script>
	window.userRole = '${userModel.role}';
</script>
