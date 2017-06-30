<!DOCTYPE html>
<html lang="en">
<head>
<title>ONLINE SHOES</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="./resources/css/shoe.css">
<link rel="stylesheet" href="./resources/css/caroualresponsive.css">
 

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
</head>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
	 
		<jsp:include page="Header.jsp"/>
		
			<!--  <nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					 
					<img alt="Carousel Bootstrap First"
							src="./images/logo-homee1.jpg" width=50px;hight=10px; />
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Mens</a></li>
						<li><a href="#">Women</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sports<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				 <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="registration.jsp"><b>Sign Up</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
</div>

			</nav> -->
			
			<div class="carousel slide" id="carousel-532241">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-532241">
					</li>
					<li data-slide-to="1" data-target="#carousel-532241"></li>
					<li data-slide-to="2" data-target="#carousel-532241"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="Carousel Bootstrap First"
							src="${pageContext.request.contextPath}/resources/images/5.jpg" />
						<div class="carousel-caption">
							<h4>First Shoes</h4>
							<!-- <p>Soles can be made from a variety of materials, 
							although most modern shoes have soles made from natural rubber, polyurethane</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second"
							src="${pageContext.request.contextPath}/resources/images/6.jpg" />
						<div class="carousel-caption">
							<h4>Second Second</h4>
							 
						<!-- 	<p>Soles can be made from a variety of materials, 
							although most modern shoes have soles made from natural rubber, polyurethane</p>
						 -->	</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/8.jpg" />
						<div class="carousel-caption">
							<h4>Third Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/9.jpg" />
						<div class="carousel-caption">
							<h4>Four Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/10.jpg" />
						<div class="carousel-caption">
							<h4>Four Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/11.jpg" />
						<div class="carousel-caption">
							<h4>Five Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/12.jpg" />
						<div class="carousel-caption">
							<h4>Five Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/13.jpg" />
						<div class="carousel-caption">
							<h4>Five Shoe</h4>
												
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third"
							src=" ${pageContext.request.contextPath}/resources/images/14.jpg" />
						<div class="carousel-caption">
							<h4>Five Shoe</h4>
												
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-532241"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" href="#carousel-532241"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
			<br><br>
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-4">
							<div class="thumbnail">
							<!-- <a href="p1-details"> --> <img alt="Bootstrap Thumbnail First"
									src="${pageContext.request.contextPath}/resources/images/p1.jpg" /></a>
								<div class="caption">
								<center><h3>Men Shoe Dark Grey </h3>
									  <p>Rs.2750</p></center>
									<!--    <a class="btn" href="p1-details">Buy Now</a> -->
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
								<!-- <a href="p2-details"> --><img alt="Bootstrap Thumbnail Second"
									src="${pageContext.request.contextPath}/resources/images/p2.jpg" /></a>
								<div class="caption">
									<center><h3>Men Shoe Grey & black</h3>
									  <p>Rs.3500</p></center>
									<p>
									  <!-- <a class="btn" href="p2-details">Buy Now</a> -->
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
						<!-- 	<a href="p3-details"> -->	<img alt="Bootstrap Thumbnail Third"
									src="${pageContext.request.contextPath}/resources/images/p5.jpg" /></a>
								<div class="caption"><br>
									 
									<center><h3>Men Shoe Light Blue</h3>
									  <p>Rs.2500</p></center>
										   <!-- <a class="btn" href="p3-details">Buy Now</a> -->
									</p>
								</div>
							</div>
						</div>
						<br>
						<br>
						<br>
						<br>
						
					
		<!--   			<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<a href="#"><span class="fa fa-twitter"></span></a> 
					<a href="#"><span class="fa fa-facebook"></span></a>
					<a href="#"><span class="fa fa-google"></span></a>
				</div>
				<div class="col-md-2 pull-right">
				AboutUs
				</div>
			</div>
		</div>
	</footer>-->
					</div>
				</div>
			</div>
			
			<div class="container">
   <div class="row">
      <div id="adv_team_4_columns_carousel" class="carousel slide four_shows_one_move team_columns_carousel_wrapper" data-ride="carousel" data-interval="2000" data-pause="hover">
         <!--========= Wrapper for slides =========-->
         <div class="carousel-inner" role="listbox">
            <!--========= 1st slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/sp1.jpg" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/sp2.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Madurai</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/sp3.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/sp4.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
            </div>
            <!--========= 2nd slide =========-->
            <div class="item active">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/sp5.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Chennai</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/sp6.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Banglore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/sp7.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Mumbai</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/sp8.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Andhara</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
            </div>
            <!--========= 3rd slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/sp9.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Uttra pradhesh</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/sp10.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Kerala</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/sp11.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/sp12.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Delhi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
            </div>
           <!--========= 4th slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/sp9.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/sp2.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/sp1.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="./resources/images/sp2.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
            </div>
            <!--========= 5th Slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/sp5.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/sp6.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="./resources/images/sp10.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/sp12.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>Men Shoes</h5>
                  </div>
               </div>
            </div>
            
            <iframe src="https://www.youtube.com/embed/1QClGekWO2k"
   width="370" height="215" frameborder="0" allowfullscreen></iframe>
            
            <iframe src="https://www.youtube.com/embed/n3rPDLzted4"
   width="370" height="215" frameborder="0" allowfullscreen></iframe>
   
   
            <iframe src="https://www.youtube.com/embed/BF-EtVt_MQs"
   width="370" height="215" frameborder="0" allowfullscreen></iframe>
   
            
             
     <a class="left carousel-control team_columns_carousel_control_left adv_left" href="#adv_team_4_columns_carousel" role="button" data-slide="prev">
         <span class="fa fa-angle-left team_columns_carousel_control_icons" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
         </a>
         
         <a class="right carousel-control team_columns_carousel_control_right adv_right" href="#adv_team_4_columns_carousel" role="button" data-slide="next">
         <span class="fa fa-angle-right team_columns_carousel_control_icons" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
         </a>
      </div>
   </div>
</div > 
			
		</div>
	</div>
</div>

<jsp:include page="Footer.jsp"/>	

</body>
</html>