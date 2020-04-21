<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cmg.model.FullDetails"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volunteering</title>
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

<!--  data tables -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

</head>
<body>
	<div class="topcorner">
	<a href="<%=request.getContextPath()%>/volunteer" class="btn btn-link"
			id="backButton" role="button" aria-pressed="true">Back</a>
		<a href="<%=request.getContextPath()%>/home" class="btn btn-link"
			id="homeButton" role="button" aria-pressed="true">Home</a>
	</div>
	<div class="table-responsive">
	<p></p>
	<h3>List of people who need support</h3>
	<p></p>
		<table id="example" class="table table-bordered table-hover table-sm" style="width: 100%">
		  <caption>Please change the status only if an action is taken by a volunteer</caption>
			<thead class="thead-dark">
				<tr>
					<th>City</th>
					<th>Area</th>
					<th>Contact</th>
					<th>Description</th>
					<th>Current status</th>
					<th>Change status</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<FullDetails> fullDetailsList = (ArrayList<FullDetails>) request.getAttribute("fullDetailsList");
					for (FullDetails i : fullDetailsList) {
				%>
				<%-- Arranging data in tabular form 
        --%>
				<tr>
					<td><%=i.getCity()%></td>
					<td><%=i.getArea()%></td>
					<td><%=i.getContact()%></td>
					<td><%=i.getSupportText()%></td>
					<td><%=i.getStatus()%></td>
					<td>
						<div class="container">
							<form action="submitStatus" method="post">
							 <input type="hidden" id="id" name="id" value=<%=i.getId()%>>
							<label for="status"></label> <select
							name="status" id="status" class=""
							required>
							<option value="">Choose...</option>
							<option value="open">Open</option>
							<option value="ongoing">Ongoing</option>
							<option value="closed">Closed</option>
						</select>
						<button type="submit" id="submit"
									class="btn btn-secondary btn-sm">Submit status</button>
							</form>
						</div>
					</td>

				</tr>
				<%
					}
				%>

			</tbody>
		</table>
	</div>
</body>
</html>

<style type="text/css">
body {
	background-image:
		/* 		url("https://springfieldeducation.org/wp-content/uploads/2018/07/plain-blue-background.jpg");
 */ background-color : #cccccc;
}

.topcorner {
	position: absolute;
	top: 10px;
	right: 10px;
	top: 10px;
}

#table {
	margin-top: 50px;
}
</style>

<script>
/* 	function filterGlobal() {
		$('#example').DataTable().search($('#global_filter').val()).draw();
	}

	function filterColumn(i) {
		$('#example').DataTable().column(i).search(
				$('#col' + i + '_filter').val()).draw();
	}

	$(document).ready(function() {
		$('#example').DataTable();

		$('input.global_filter').on('keyup click', function() {
			filterGlobal();
		});

		$('input.column_filter').on('keyup click', function() {
			filterColumn($(this).parents('tr').attr('data-column'));
		});
	}); */
</script>