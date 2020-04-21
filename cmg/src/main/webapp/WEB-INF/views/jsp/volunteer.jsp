<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cmg.model.FullDetails"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I can volunteer</title>
<!-- Latest compiled and minified CSS -->
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
				<form class="form-example" action="next" method="post">
					<h3>Please select volunteer type and location</h3>
					<div class="form-group">
					<label for="volunteerType">Select volunteer type</label> <select
						name="volunteerType" id="volunteerType" class="form-control radio"
						required>
						<option value="">Choose...</option>
						<option value="Food support">Food support</option>
						<option value="Financial support">Financial support</option>
						<option value="Medical support">Medical support</option>
						<option value="Psychological support">Psychological
							support</option>
					</select>
					</div>
					 <p></p> 

					<div class="form-group">
						<label for="state">Select state</label> <select name="state"
							id="state" class="form-control radio" required>
							<option value="">Choose...</option>

							<%
						ArrayList<String> stateList = (ArrayList<String>) request.getAttribute("stateList");
						for (String state : stateList) {
							%>
							<%String s = state; %>
							<option value=<%=s%>><%=s%></option>
							<%
						}
					%>
						</select>
					</div>
					
				<button type="submit" id="submit" class="btn btn-primary btn-customized">Next</button>
				<a href="<%=request.getContextPath()%>/home" class="btn btn-outline-secondary"
			id="homeButton" role="button" aria-pressed="true">Home</a>
					</form>
					</br>
					
			</div>
		</div>
	</div>

</body>
</html>