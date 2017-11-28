 <style> 
input[type=text] {
    width: 1000px;
    box-sizing: border-box;
    border: 2px solid ;
    border-color: DodgerBlue;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
   
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    
}


</style>
 
 
 <div class="container">
 <div class="row">
 <div class="offset-lg-1 col-lg-8">
 <form>
 <div class="right-inner-addon">
     <i class="fa fa-search" aria-hidden="true"></i>
  <input type="text" name="search" placeholder="Search..">
  </div>
</form>
 </div>
</div>
</div>




<div class="container">

	<div class="row">

		<div class="col-lg-3">

			<%@include file="./shared/sidebar.jsp" %>

		</div>
		<!-- /.col-lg-3 -->

		<div class="col-lg-9">

			<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"
					></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"
					></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"
					></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="assets/images/img11.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="assets/images/img6.png"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="assets/images/img10.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="assets/images/img9.jpg"
							alt="Fourth slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			
			
			
			<div class="row">
			<div class="my-4">
			<iframe width="420" height="315"
src="https://www.youtube.com/embed/PCvsMS4cWUU?autoplay=1">
</iframe>
			</div>
			
			<div class="col-lg-6 col-md-6 mb-4">
					<div class="card" style="width:25rem">
						<a href="${contextRoot}/show/category/3/products"><img class="card-img-top"
							src="assets/images/img15.jpg" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="${contextRoot}/show/category/3/products"><center>Smartphone Collection</center></a>
							</h4>
							<%-- <h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur!</p> --%>
						</div>
						<%-- <div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small> 
						</div> --%>
					</div>
				</div>
			
			
			</div>
			
			

		 	 <div class="row">

				<div class="col-lg-6 col-md-6 mb-4">
					<div class="card" style="width:25rem">
						<a href="${contextRoot}/show/category/1/products"><img class="card-img-top"
							src="assets/images/img12.jpg" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="${contextRoot}/show/category/1/products"><center>Laptop Collection</center></a>
							</h4>
							<%-- <h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur!</p> --%>
						</div>
						<%-- <div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small> 
						</div> --%>
					</div>
				</div>

				<div class="col-lg-6 col-md-6 mb-4">
					<div class="card h-100" style="width:25rem">
						<a href="${contextRoot}/show/category/3/products"><img class="card-img-top"
							src="assets/images/img13.jpg" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="${contextRoot}/show/category/3/products"><center>Mobile Collection</center></a>
							</h4>
							<%-- <h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit
								amet.</p> --%>
						</div>
						<%-- <div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small>
						</div> --%>
					</div>
				</div>

				 <div class="offset-lg-3 col-lg-6 col-md-6 mb-4">
					<div class="card h-100" style="width:25rem">
						<a href="${contextRoot}/show/98/product"><img class="card-img-top"
							src="assets/images/img14.jpg" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="${contextRoot}/show/98/product"><center>One Indian Girl</center></a>
							</h4>
							<p class="card-text"><strong><center>One of the Best Selling Book in India!</center></strong></p>  
							<h5><center>Only At &#8377;500</center></h5> 
						</div>
						<%-- <div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small>
						</div> --%>
					</div>
				</div>

				<%-- <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Item Four</a>
							</h4>
							<h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur!</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Item Five</a>
							</h4>
							<h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit
								amet.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Item Six</a>
							</h4>
							<h5>$24.99</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Amet numquam aspernatur!</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</small>
						</div>
					</div>
				</div> --%>

			</div> 
			<!-- /.row -->
			
			

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->


</div>
<!-- /.container -->
