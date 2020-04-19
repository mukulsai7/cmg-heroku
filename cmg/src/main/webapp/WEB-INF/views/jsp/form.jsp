<html>
<head>
<title>Step 1</title>
<!-- <link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css"
	rel="stylesheet"> -->
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
				<!-- Form -->
				<form class="form-example" action="submitText" method="post">
					<h1>Common man to government</h1>
					<p class="description">Send your suggestions and issues to the
						government seamlessly</p>
					<!-- Input fields -->
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control username" id="name" placeholder="Name..."
							name="name" required>
					</div>
					<div class="form-group">
						<label for="phone">Email/Phone:</label> <input type="text"
							class="form-control number" id="contact"
							placeholder="We may get back to you.." name="contact" required>
					</div>
					<div class="form-group">
						<label for="name">Area of concern zipcode</label> <input
							type="text" class="form-control email" id="zipcode"
							placeholder="Action will be taken in this area.." name="zipcode"
							required>
					</div>

					<div class="form-group">
						<label for="area">Area</label> <select id="area" name="area"
							class="form-control radio" required>
						</select>
					</div>

					<div class="form-group">
						<label for="profession">Profession</label> <select id="profession"
							name="profession" class="form-control radio" required>
							<option value="">Choose...</option>
							<option value="governmentEmployee">Government employee</option>
							<option value="privateEmployee">Private employee</option>
							<option value="student">Student</option>
						</select>
					</div>

					<h1>COVID-19: Fight the global pandemic</h1>
					<p class="description">Suggestions and issues that are related
						to covid-19 are prioritized</p>
					<!-- Input fields -->

					<div class="form-group">
						<label for="profession">Select ministry/department</label> <select
							name="ministryOrDept" id="ministryOrDept"
							class="form-control radio" required>
							<option value="">Choose...</option>
							<option value="covid19">Covid 19</option>
							<option value="Ministry of Home Affairs">Ministry of Home Affairs</option>
							<option value="Ministry of Labour
								and Employment">Ministry of Labour
								and Employment</option>
							<option value="Ministry of
								Agriculture and Farmers Welfare">Ministry of
								Agriculture and Farmers Welfare</option>
							<option value="Ministry of Finance">Ministry of Finance</option>
							<option value="Ministry of
								Health and Family Welfare">Ministry of
								Health and Family Welfare</option>
							<option value="Ministry of Law and
								Justice">Ministry of Law and
								Justice</option>
							<option value="Ministry
								of Skill Development and Entrepreneurship">Ministry
								of Skill Development and Entrepreneurship</option>


						</select>
					</div>

					<div class="form-group">
						<label for="comment">Please write your suggestion or issue
							here:</label>
						<textarea class="form-control" rows="5" id="comment"
							name="suggestionOrIssueText" required></textarea>
					</div>

					<label class="radio-inline"><input type="radio"
						name="submissionType" value="Suggestion" checked>Suggestion</label>
					<label class="radio-inline"><input type="radio"
						name="submissionType" value="Issue">Issue</label> </br>
					<button type="submit" id="submit"
						class="btn btn-primary btn-customized">Submit</button>
					<!-- End input fields -->
				</form>
				<!-- Form end -->
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
</style>

<script>
	var zipCodeValue = document.getElementById("zipcode");
	zipcode.addEventListener("blur", function() {
		var ourData = "";
		var options = "";
		document.getElementById("area").innerHTML = options;
		console.log('entered into ..');
		console.log(zipCodeValue.value);
		var ourRequest = new XMLHttpRequest();
		ourRequest.open('GET', "https://api.postalpincode.in/pincode/"
				.concat(zipCodeValue.value));
		ourRequest.onload = function() {
			ourData = JSON.parse(ourRequest.responseText);
			console.log(ourData[0].PostOffice[0].Name);
			for (var i = 0; i < ourData[0].PostOffice.length; i++) {
				options += "<option>" + ourData[0].PostOffice[i].Name
						+ "</option>";
			}
			document.getElementById("area").innerHTML = options;

		};
		ourRequest.send();

	});

	function getAjaxData() {
		return ourData;
	}
</script>