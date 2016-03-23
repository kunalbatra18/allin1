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
<link href="<c:url value="/resources/css_idea/style-nav.css"/>"
	rel="stylesheet" type="text/css" />
</head>


<input id="content_type" name="content_type" type="hidden" value="${content_type}"/>

<body>
	<section class="container">
		<section class="idea-port" style="background-color: #333;">
			<jsp:include page="/WEB-INF/headers/header.jsp" />
			<section class="idea-show">
				<%-- <jsp:include page="/WEB-INF/headers/cat_list.jsp" /> --%>


				<section class="port">
					<section class="row">

						<div id="wait">

							<c:forEach items="${user_result_list}" var="contentDesc">

								<section class="col-md-4 col-xs-4">
									<section class="left-pre">

										<a
											href="<c:url value= "downloadSearch?content_name=${contentDesc.prv}" />"
											style="box-shadow: none;"> <img 
											src="<c:url value="../m4u/CMS/Preview/${contentDesc.prv}" />" />
										</a>
									</section>
								</section>
							</c:forEach>


						</div>
					</section>




				</section>
				
				

			</section>


			<section class="footer">
				<p>copyright@2016</p>
			</section>
		</section>
	</section>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<script src="<c:url value="/resources/js_idea/bootstrap.js" />"></script>

</body>
</html>