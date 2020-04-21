<html>

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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	
</script>
</head>

<body>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6">
				<!-- Form -->
				<form class="form-example" action="submitText" method="post">
					<h1>Covid 19 support form</h1>
					<p class="description">A volunteer may help the person
						mentioned in this form</p>
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
					<!-- Input fields -->

					<div class="form-group">
						<label for="supportType">Select support type</label> <select
							name="supportType" id="supportType" class="form-control radio"
							required>
							<option value="">Choose...</option>
							<option value="Food support">Food support</option>
							<option value="Financial support">Financial support</option>
							<option value="Medical support">Medical support</option>
							<option value="Psychological support">Psychological
								support</option>
						</select>
					</div>

					<div class="form-group">
						<label for="supportText">Please write about support here:</label>
						<textarea class="form-control" rows="5" id="supportText"
							name="supportText" required></textarea>
					</div>
					<input type="hidden" id="status" name="status" value="open">

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
		/* 			url("https://springfieldeducation.org/wp-content/uploads/2018/07/plain-blue-background.jpg");
 */ background-color : #cccccc;
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