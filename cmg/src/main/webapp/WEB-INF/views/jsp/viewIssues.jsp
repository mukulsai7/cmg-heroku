<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cmg.model.FullDetails"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View issues/suggestions</title>
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
		<a href="<%=request.getContextPath()%>/home" class="btn btn-link"
			id="homeButton" role="button" aria-pressed="true">Home</a>
	</div>
	<div id="table">
		<table id="example" class="display" style="width: 100%">
			<thead>
				<tr>
					<th>State</th>
					<th>District</th>
					<th>Area</th>
					<th>Type</th>
					<th>Dept</th>
					<th>Info</th>
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
					<td><%=i.getState()%></td>
					<td><%=i.getDistrict()%></td>
					<td><%=i.getArea()%></td>
					<td><%=i.getSubmissionType()%></td>
					<td><%=i.getMinistryOrDept()%></td>
					<td><%=i.getSuggestionOrIssueText()%></td>

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
	position: absolute; top : 10px;
	right: 10px;
	top: 10px;
}

#table {
margin-top:50px;	
}

</style>

<script>
	function filterGlobal() {
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
	});
</script>