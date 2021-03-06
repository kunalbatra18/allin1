<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Idea-wap</title>
<link href="<c:url value="/resources/css_idea/bootstrap.css" />"rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css_idea/style.css" />"rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css_idea/animate.css" />"rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css_idea/style-nav.css"/>" rel="stylesheet" type="text/css"/>
</head>

<body>
<section class="container">
  <section class="idea-port" style="background-color:#333;">
    <section class="header-idea">
      <section class="row">
        <section class="col-md-3 col-xs-3">
          <section class="logo"> <img src="<c:url value="/resources/img_idea/logo-idea.png" />"/> </section>
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
          <section class="logo-T"> <img src="<c:url value="/resources/img_idea/Tesync.png" />"/> </section>
        </section>
      </section>
    </section>
   <section class="search-engine">
    <section class="row">
        <section class="col-md-2 col-xs-2"></section>
            <section class="col-md-8 col-xs-8">
        <section class="search_area">
            <form class="navbar-form" role="search" method="post" action="search.jsp"  name="search_form" onsubmit="return validateSearch()">
                 <center><div class="form-group">
                    <input type="text" class="form-control sear" placeholder="Search" name="users_keyword">
                    <button type="submit" class="btn btn-default sear_btn">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                </div></center>
                </form>
        </section>
        </section>
        
        <section class="col-md-2 col-xs-2"></section>
    </section>
        </section>
        <section class="nav-area">
                    <ul class="navi navbar">
                        <li id="home">
                            <a href="index.jsp?cli=home" class="one">
                                <span>Home</span>
                            </a> </li>
                        <li id="img"> <a href="wallpaper.jsp?cli=img" class="one">
                                 <span>Wallpaper</span>

                            </a> </li>
                        <li id="vid"> <a href="video.jsp?cli=vid" class="one">
                                 <span>Video</span>

                            </a> </li>
                        <li id="anim"> <a href="animation.jsp?cli=anim" class="one">
                                 <span>Animation</span>

                            </a> </li>
                        <li id="game"> <a href="game.jsp?cli=game" class="one">
                                 <span>Games</span>

                            </a> 
                        </li>
                     
                    </ul>
                </section>

 <section class="idea-show">
      <section class="row">
        <section class="cat-head">
    <section class="col-md-6 col-xs-6">
    <section class="head">
    <h3>Wallpaper</h3>
    </section>
    </section>
     <section class="col-md-6 col-xs-6">
     <div style="padding:10px; float:left;width:100%;">
  <select style="width:100%; padding:5px;border:none;">
        <option>categories</option>
        <option>categories</option>
        <option>categories</option>
         <option>categories</option>
        <option>categories</option>
    </select>
    </div>
    </section>
    
    </section>

</section>

 <section class="port">
            <section class="row">
              <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="<c:url value="/resources/img_idea/9.jpg" />"/> </section>
                    </section>
                     <section class="col-md-4 col-xs-4">
					 <a href="<spring:url value= "/download" />">
                  <section class="left-pre"> 
				  
				  <img src="<c:url value="../m4u/CMS/Preview/Wallpaper/aarti_chhabria.jpg" />"/> 
				 
				  </section>
				   </a>
                    </section>
                       <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
            </section>

         <section class="row">
              <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
                     <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
                       <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
            </section>
                     <section class="row">
              <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
                     <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
                       <section class="col-md-4 col-xs-4">
                  <section class="left-pre"> <img src="img_idea/9.jpg"/> </section>
                    </section>
            </section>
      
      </section>
      <section class="banner">
           <img src= "<c:url value="/resources/img_idea/free zone.png"/>" />
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