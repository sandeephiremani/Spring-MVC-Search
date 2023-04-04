<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Form</title>
</head>
<body>
	<div class="card mx-auto mt-5 bg-primary " style="width: 50%">

		<div class="card-body">
			<h3 class="text-center" style="color: white;">Complex Form</h3>
			<div class="alert alert-danger" role="alert">
			
			<form:errors path="student.*" />
			
			</div>
			<form action="handleform" method="post">
				<div class="form-group mt-5">
					<label for="formGroupname">First Name</label> <input type="text"
						class="form-control" id="formGroupname"
						placeholder="Enter your name" name="name">
				</div>
				<div class="form-group">
					<label for="formGroupId">ID</label> <input type="text"
						class="form-control" id="formGroupId" placeholder="Enter your ID"
						name="id">
				</div>
				<div class="form-group">
					<label for="formGroupdob">DOB</label> <input type="text"
						class="form-control" id="formGroupdob" placeholder="dd/mm/yyyy"
						name="dob">
				</div>
				<div class="form-group">
					<label for="formGroupourse">Course</label> <select multiple
						class="form-control" id="formGroupourse" name="course" multiple>
						<option>Java</option>
						<option>SQL</option>
						<option>JDBC</option>
						<option>Hibernate</option>
						<option>Springs framework</option>
					</select>
				</div>
				<div class="form-check form-check-inline">
					<label for="gender">Select Gender</label> <input
						class="form-check-input" type="radio" name="gender"
						id="inlineRadio1" value="male"> <label
						class="form-check-label" for="inlineRadio1">Male</label>
				</div>
				<div class="form-check form-check-inline">

					<input class="form-check-input" type="radio" name="gener"
						id="inlineRadio2" value="female"> <label
						class="form-check-label" for="inlineRadio2">Female</label>
				</div>
				<select class="form-control form-control-lg" name="type">
					<option>Old Student</option>
					<option>New Student</option>
				</select>

				<div class="card mt-4">
					<div class="card-body">
						<p>Address</p>
						<input type="text" class="form-control" id="formGroupname"
							placeholder="Enter your Street" name="address.street"> <input
							type="text" class="form-control" id="formGroupname"
							placeholder="Enter your City" name="address.city">
					</div>
				</div>

				<div class="Form-Group text-center mt-3">
					<button class="btn btn-outline-light"
						style="border-radius: 3px solid;">Submit</button>
				</div>
			</form>

		</div>
	</div>



	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>