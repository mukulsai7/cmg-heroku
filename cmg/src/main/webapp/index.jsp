<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
<title>Step 1</title>
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6">
				<div class="form-group">
					<a href="<%=request.getContextPath()%>/form"
						class="btn btn-primary btn-lg active" id="submitButton"
						role="button" aria-pressed="true"> Submit issue</a> <br />
					<a href="<%=request.getContextPath()%>/viewIssues"
						class="btn btn-primary btn-lg active" id="viewButton"
						role="button" aria-pressed="true">View issues/suggestions </a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


<style type="text/css">
body {
	background-image:
		url("https://springfieldeducation.org/wp-content/uploads/2018/07/plain-blue-background.jpg");
	background-color: #cccccc;
}

#submitButton {
	width: 270px;
	text-align: center;
	margin: auto;
	display: block;
}

#viewButton {
	width: 270px;
	text-align: center;
	margin: auto;
	display: block;
}
</style>



