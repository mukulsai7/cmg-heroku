<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
<title>Step 1</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6">
				<div class="form-group">
					<h1>COVID-19: Fight the global pandemic</h1>
					<a href="<%=request.getContextPath()%>/form"
						class="btn btn-primary btn-lg active" id="submitButton"
						role="button" aria-pressed="true">I need support</a> <br /> <a
						href="<%=request.getContextPath()%>/volunteer"
						class="btn btn-primary btn-lg active" id="viewButton"
						role="button" aria-pressed="true">I can volunteer</a>
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




