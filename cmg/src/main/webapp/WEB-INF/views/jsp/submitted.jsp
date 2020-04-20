<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submitted</title>
<!-- 	<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	
</script>
</head>

<body>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6">
				<!-- Form -->
				<form class="form-example" action="" method="post">
					<h1>Thankyou, your issue/suggestion submitted!</h1>
				</form>
				<a href="<%=request.getContextPath()%>/home"
					class="btn btn-outline-secondary" id="homeButton" role="button"
					aria-pressed="true">Home</a>
			</div>
		</div>
	</div>

</body>

</html>