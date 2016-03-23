<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <script type="text/javascript">
function validateSearch() {
  var users_keyword = document.search_form.users_keyword.value;
//                var sub_number = msisdn.substr(0, 2);
if (!users_keyword.replace(/\s/g, '').length) {
    alert("Please write something ");
    return false;
    // string only contained whitespace (ie. spaces, tabs or line breaks)
}
              
                
            }
</script> -->

<section class="header-idea">
	<section class="row">
		<%-- <section class="col-md-3 col-xs-3">
			<section class="logo">
				<img src="<c:url value="/resources/img_idea/logo-idea.png" />" />
			</section>
		</section> --%>
		<section class="col-md-6 col-xs-6">
			
		</section>
		
	</section>
</section>
<section class="search-engine">
	<section class="row">
		<section class="col-md-2 col-xs-2"></section>
		<section class="col-md-8 col-xs-8">
			<section class="search_area">
				<form class="navbar-form" role="search" method="post"
					action="Search" name="search_form"
					onsubmit="return validateSearch()">
					<%-- <center> --%>
						<div class="form-group">
							<input type="text" class="form-control sear" placeholder="Search" name="users_keyword">
							<button type="submit" class="btn btn-default sear_btn">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</div>
				<%-- 	</center> --%>
				</form>
			</section>
		</section>

		<section class="col-md-2 col-xs-2"></section>
	</section>
</section>
<section class="nav-area">
	<ul class="navi navbar">
		<li id="home"><a href="index?cli=home" class="one"> <span>Home</span>
		</a></li>
		<li id="img"><a href="Wallpaper?cli=img" class="one"> <span>Wallpaper</span>

		</a></li>
		<li id="vid"><a href="Video?cli=vid" class="one"> <span>Video</span>

		</a></li>
		<li id="anim"><a href="Animation?cli=anim" class="one"> <span>Animation</span>

		</a></li>
		<li id="game"><a href="Game?cli=game" class="one"> <span>Games</span>

		</a></li>

	</ul>
</section>