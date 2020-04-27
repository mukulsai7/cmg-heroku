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

	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">

			<div class="col-10 col-md-8 col-lg-6">
				<form class="form-group col" action="" method="post">
					<div class="d-flex justify-content-center">
						<h3>Community collaboration</h3>
					</div>
					<div class="d-flex justify-content-center">
						<p>Connecting people who are need and people who can serve</p>
					</div>

					<a href="<%=request.getContextPath()%>/form"
						class="btn btn-primary btn-lg btn-customized" id="submitButton"
						role="button" aria-pressed="true">I need support</a> <br /> <a
						href="<%=request.getContextPath()%>/volunteer"
						class="btn btn-primary btn-lg btn-customized" id="viewButton"
						role="button" aria-pressed="true">I can volunteer</a>

				</form>

				<div id="adminKeyForm" class="d-flex justify-content-center">
					<form action="viewIssues">
						<div class="col-xs-4" id="adminKey">
							<input class="form-control" id="adminKey" name="adminKey"
								id="ex2" type="password" placeholder="Admin key">
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
				</div>

			</div>

		</div>

	</div>

</body>
</html>

<style type="text/css">
body {
	background-image: background-color:;
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

.centered {
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: 130px;
	transform: translate(-50%, -50%);
}

/* #admin {
	padding: 8px 16px;
	left: 60px;
} */
#adminKey {
	width: 270px;
}
</style>



