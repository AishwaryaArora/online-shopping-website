<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home"><h3>Shopping
				Way!!!</h3></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li id="listProducts" class="nav-item"><a class="nav-link"
					href="${contextRoot}/show/all/products"><h5>Product</h5> <span
						class="sr-only">(current)</span> </a></li>
				<%-- <li id="category" class="nav-item"><a class="nav-link"
					href="${contextRoot}/category">Category</a></li> --%>
				<li id="register" class="nav-item"><a class="nav-link"
					href="${contextRoot}/register"><span
						class="glyphicon glyphicon-user"></span>
					<h5>Register</h5></a></li>
				<li id="login" class="nav-item"><a class="nav-link"
					href="${contextRoot}/login"><span
						class="glyphicon glyphicon-log-in"></span>
					<h5>Login</h5></a></li>
				<li id="about" class="nav-item"><a class="nav-link"
					href="${contextRoot}/about"><h5>About</h5></a></li>

				<li id="manageProducts" class="nav-item"><a class="nav-link"
					href="${contextRoot}/manage/products"><h5>Manage Products</h5></a></li>

			</ul>




		</div>
	</div>
</nav>

