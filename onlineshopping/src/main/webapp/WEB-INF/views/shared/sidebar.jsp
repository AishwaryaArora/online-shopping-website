<h3 class="my-4">CATEGORY</h3>
<div class="list-group">


	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}"><h6>${category.name}</h6></a>
	</c:forEach>



</div>