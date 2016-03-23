<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Idea-wap</title>

<link href="<c:url value="/resources/css_idea/bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css_idea/style.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css_idea/animate.css" />"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<section class="container">
		<section class="idea-port" style="background-color: #333;">
			<section class="header-idea">
				<section class="row">
					<section class="col-md-3 col-xs-3">
						<section class="logo">
							<img src= "<c:url value="/resources/img_idea/logo-idea.png"/>" />
						</section>
					</section>
					<section class="col-md-6 col-xs-6">
						<!--  <section class="lang">
            <select onchange="javascript:showonlyone(this.value);" style="padding:5px;">
              <option value="newboxes1">English</option>
              <option value="newboxes2">Hindi</option>
            </select>
          </section>-->
					</section>
					<section class="col-md-3 col-xs-3">
						<section class="logo-T">
							<img src="<c:url value="/resources/img_idea/Tesync.png" />"/>
						</section>
					</section>
				</section>
			</section>
			<section class="search-engine">
				<section class="row">
					<section class="col-md-2 col-xs-2"></section>
					<section class="col-md-8 col-xs-8">
						<section class="search_area">
							<form class="navbar-form" role="search" method="post"
								action="search.jsp" name="search_form"
								onsubmit="return validateSearch()">
								<center>
									<div class="form-group">
										<input type="text" class="form-control sear"
											placeholder="Search" name="users_keyword">
										<button type="submit" class="btn btn-default sear_btn">
											<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										</button>
									</div>
								</center>
							</form>
						</section>
					</section>

					<section class="col-md-2 col-xs-2"></section>
				</section>
			</section>

			<section class="idea-show">
				<section class="row">
					<section class="col-md-12 col-xs-12">
						<section class="ic-area">
							<div class="content">
								<ul class="ca-menu">
									<section class="row">

										<section class="col-md-6 col-xs-6">
											<li><a href="cat-id.html"> <span class="ca-icon">
														<img
														src="<c:url value="/resources/img_idea/wallpaper.png"/>" />
												</span>
													<div class="ca-content">
														<h2 class="ca-main">Wallpaper</h2>

													</div>
											</a></li>
										</section>
										<section class="col-md-6 col-xs-6">
											<li><a href="cat-id.html"> <span class="ca-icon">
														<img src="<c:url value="/resources/img_idea/video.png"/>" />
												</span>
													<div class="ca-content">
														<h2 class="ca-main">Videos</h2>

													</div>
											</a></li>

										</section>

										<section class="col-md-6 col-xs-6">
											<li><a href="#"> <span class="ca-icon">
											<img src= "<c:url value="/resources/img_idea/animation.png" />"/></span>
													<div class="ca-content">
														<h2 class="ca-main">Animations</h2>

													</div>
											</a></li>
										</section>

										<section class="col-md-6 col-xs-6">
											<li><a href="#"> <span class="ca-icon">
											<img src= "<c:url value="/resources/img_idea/games.png" />"/></span>
													<div class="ca-content">
														<h2 class="ca-main">Games</h2>

													</div>
											</a></li>
										</section>


									</section>
								</ul>
							</div>
							<!-- content -->





						</section>
					</section>


					<section class="banner">
						<section class="banner-head">
							<section class="row">
								<section class="day-zone">
									<section class="col-md-2 col-xs-2"></section>
									<section class="col-md-8 col-xs-8">
										<section class="pick">

											<h4>Pick of the Day</h4>
										</section>

									</section>
									<section class="col-md-2 col-xs-2"></section>
								</section>

							</section>
						</section>
						<section class="bann-img">
							<img
								src="<c:url value="/resources/img_idea/free.png"/>" />
						</section>
					</section>

					<section class="banner">
						<section class="banner-head">
							<section class="row">
								<section class="day-zone">
									<section class="col-md-2 col-xs-2"></section>
									<section class="col-md-8 col-xs-8">
										<section class="pick">
											<h4>Free Zone</h4>
										</section>

									</section>
									<section class="col-md-2 col-xs-2"></section>
								</section>

							</section>
						</section>
						<section class="bann-img">
							<img src= "<c:url value="/resources/img_idea/free zone.png"/>" />
						</section>

					</section>

				</section>
			</section>


			<section class="footer">
				<p>copyright@2016</p>
			</section>
		</section>
	</section>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="<c:url value="/resources/js_idea/bootstrap.js" />"></script>

</body>
</html>