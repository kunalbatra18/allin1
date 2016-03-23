<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

function showContentBycatNameAndContentType(cat_type)
{
//                var date1 = document.getElementById("date-pick").value;
  var content_type = document.getElementById('content_type').value;
    document.getElementById("wait").innerHTML = "Please Wait....";
    var xmlhttp;

    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("wait").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "allCatAjax?cat=" + cat_type + "&content_type=" + content_type, true);
    xmlhttp.send();
}
</script>





<%-- <script src="<c:url value="/resources/design/scripts/Allscript.js" />"> --%>
</script>
<section class="row">
	<section class="cat-head">
		<section class="col-md-6 col-xs-6">
			<section class="head">
				<h3>${content_type}</h3>
			</section>
		</section>
		<input id="content_type" name="content_type" type="hidden" value="${content_type}"/>
		<section class="col-md-6 col-xs-6" >
			<div style="padding: 10px; float: left; width: 100%;">
			
				 <select style="width: 100%; padding: 5px; border: none;" name="d" onchange="showContentBycatNameAndContentType(this.value)">
				
				 <c:forEach items="${contentCat}" var="contentCat">
					<option value="${contentCat.cat_name}">${contentCat.cat_name}</option>
					</c:forEach>
					
				</select> 
			</div>
		</section>
		
		

	</section>

</section>