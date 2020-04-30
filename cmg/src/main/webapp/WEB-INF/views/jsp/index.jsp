<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
<title>Step 1</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<div class="jumbotron jumbotron-fluid">
		<div class="text-center">
			<h4 class="display-5">Community collaboration</h4>

			<p>Connecting people who are in need and people who can serve</p>
			<a href="<%=request.getContextPath()%>/form"
				class="btn btn-primary btn-lg btn-customized" id="submitButton"
				role="button" aria-pressed="true">I need support</a>
			<p></p>
			<a href="<%=request.getContextPath()%>/volunteer"
				class="btn btn-primary btn-lg btn-customized" id="viewButton"
				role="button" aria-pressed="true">I can volunteer</a>
			<p></p>

			<!-- <div id="adminKeyForm" class="> -->
			<form action="viewIssues">
				<div class="col-lg-2 col-xs-12 col-sm-12 col-centered" id="adminKey">
					<input class="form-control" id="adminKey" name="adminKey" id=""
						type="password" placeholder="Admin key" width="48">
				</div>
				<p></p>
				<button type="submit" id="admin"
					class="btn btn-primary btn-customized">Login as admin</button>
				<%
								if (request.getAttribute("invalidLoginText") != null) {
							%>
				<p>
					<%=request.getAttribute("invalidLoginText")%>
				</p>

				<%
								}
							%>
			</form>
			<p></p>
			<!-- </div> -->
			<div class="col-lg-6 col-md-6 col-centered">
				<p>
					Admin contact : <a href="mailto:mukulsai7@gmail.com">mukulsai7@gmail.com</a>
				</p>
			</div>
		</div>

	</div>
</body>
</html>
<style>
    .col-centered{
    margin: 0 auto;
    float: none;
}
</style>
