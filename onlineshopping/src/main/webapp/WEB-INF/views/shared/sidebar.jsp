<h3 class="my-4">CATEGORY</h3>
<div class="list-group">

<%--below categories is coming from pagecontroller --%>
	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}"><h5>${category.name}</h5></a>
	</c:forEach>



</div>




<div class="a2a_kit a2a_kit_size_52 a2a_floating_style a2a_vertical_style" style="left:0px; top:150px;">
    <a class="a2a_button_facebook"></a>
    <a class="a2a_button_twitter"></a>
    <a class="a2a_button_google_plus"></a>
    <a class="a2a_button_pinterest"></a>
    <a class="a2a_button_whatsapp"></a>
   
    <%-- <a class="a2a_dd" href="https://www.addtoany.com/share"></a> --%>
</div>

<script async src="https://static.addtoany.com/menu/page.js"></script>