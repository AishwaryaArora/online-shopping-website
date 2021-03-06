<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>

<!-- Fevicon -->
<link rel="icon" href="${contextRoot}/assets/images/logo.jpg">

<title>Shopping Way!!! -${title}</title>


<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">


<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>


		<!-- Page Content -->

		<div class="content">

			<c:if test="${userClickHome == true}">

				<%@include file="home.jsp"%>
			</c:if>


			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<!-- Page Content -->
				<%@include file="listProducts.jsp"%>
			</c:if>

			 <c:if test="${userClickOrder == true}">
				<!-- Page Content -->
				<%@include file="orderPlaced.jsp"%>
			</c:if> 

			<c:if test="${userClickRegister == true}">
				<!-- Page Content -->
				<%@include file="register.jsp"%>
			</c:if>

			<c:if test="${userClickLogin == true}">
				<!-- Page Content -->
				<%@include file="login.jsp"%>
			</c:if>

			<c:if test="${userClickAbout == true}">
				<!-- Page Content -->
				<%@include file="about.jsp"%>
			</c:if>

			<c:if test="${userClickShowProduct == true}">
				<!-- Page Content -->
				<%@include file="singleProduct.jsp"%>
			</c:if>

			<c:if test="${userClickManageProducts == true}">
				<!-- Page Content -->
				<%@include file="manageProducts.jsp"%>
			</c:if>
			
			<c:if test="${userClickShowCart == true}">
				<!-- Page Content -->
				<%@include file="cart.jsp"%>
			</c:if>

		</div>


		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>



		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		
		<script src="${js}/jquery.validate.js"></script>

		<script src="${js}/bootstrap.bundle.min.js"></script>

		<script src="${js}/jquery.dataTables.js"></script>

		<script src="${js}/dataTables.bootstrap4.js"></script>

		<script src="${js}/bootbox.min.js"></script>

		<!-- self coded js for myapp.js -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>


</html>
