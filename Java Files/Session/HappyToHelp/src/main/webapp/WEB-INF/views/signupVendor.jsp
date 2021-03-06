<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Vendor Registration</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css"
		href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
	<link rel="stylesheet" href="css/styleCustomer.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- style css -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Responsive-->
	<link rel="stylesheet" href="css/responsive.css">
	<!-- fevicon -->
	<link rel="icon" href="images/fevicon.png" type="image/gif" />
	<!-- Scrollbar Custom CSS -->
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
	<!-- Tweaks for older IEs-->
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
	
</head>

<body class="form-v10" style>
	<!-- <div class="header-top"> -->
		<div class="header">
		   <div class="container-fluid">
			  <div class="row">
				 <div class="col-xl-2 col-lg-3 col-md-3 col-sm-3 col logo_section">
					<div class="full">
					   <div class="center-desk">
						  <div class="logo">
							 <a href="index.html"><img src="images/logo2.svg" alt="#" /></a> 
						  </div>
					   </div>
					</div>
				 </div>
				 <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
					<div class="menu-area">
					   <div class="limit-box">
						  <nav class="main-menu">
							 <ul class="menu-area-main">
								<li > <a href="index.html">Home</a> </li>
								<li> <a href="#service">Service</a> </li>
								<li class="active"> <a href="signupVendor.html">Sign Up</a> </li>
            					<li> <a href="LoginVendor.html">Login</a> </li>
								<li> <a href="#review">Review</a> </li>
								<li> <a href="#request">Contact us</a> </li>
							 </ul>
						  </nav>
					   </div>
					</div>
				 </div>
			  </div>
		   </div>
		</div>
	<div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="vendorAdding" method="post" id="myform">
				<div class="form-left">
					<h2>General Infomation</h2>

					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="Vendor_FirstName" id="Vendor_FirstName" class="input-text"
								placeholder="First Name" required>
						</div>
						<div class="form-row form-row-2">
							<input type="text" name="Vendor_LastName" id="Vendor_LastName" class="input-text"
								placeholder="Last Name" required>
						</div>
					</div>

					<div class="form-row">
						<input type="text" name="Vendor_MobileNo" class="mobileNo" id="Vendor_MobileNo" placeholder="Mobile Number"
							required length=10>
					</div>
					<div class="form-group">
						<div class="form-row form-row-3">
							<!-- <input type="text" name="email" class="email" id="email" placeholder="Email Address"
								required> -->
							<input type="text" name="Vendor_EmailId" id="Vendor_EmailId" class="input-text" required
								pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
						</div>
					</div>
					<div class="form-row">
						<input type="text" name="Vendor_UserName" class="user_name" id="Vendor_UserName" placeholder="User Name"
							required>
					</div>
					<div class="form-row">
						<input type="password" name="Vendor_Password" class="password" id="Vendor_Password" placeholder="Password"
							required >
					</div>
					<div class="form-row">
						<input type="password" name="password2" class="password2" id="password2"
							placeholder="Confirm Password" required password=password2>
					</div>
				</div>
				<div class="form-right">
					<h2>Contact Details</h2>
					<div class="form-row">
						<input type="text" name="Vendor_Address" class="address" id="Vendor_Address" placeholder="Address" required>
					</div>
					<div class="form-row">
						<input type="text" name="Vendor_State" class="state" id="Vendor_State" placeholder="State" required>
					</div>
					<div class="form-row">
						<input type="text" name="Vendor_City" class="city" id="Vendor_City" placeholder="City" required>
					</div>
					<div class="form-row">
						<input type="text" name="Vendor_Pincode" class="pincode" id="Vendor_Pincode" placeholder="Pincode" required>
					</div>

					<!-- <div class="form-row">
						<input type="text" name="your_email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
					</div> -->
					<div class="form-checkbox">
						<label class="container">
							<p>I do accept the Terms and Conditions of the site.</p>
							<input type="checkbox" name="checkbox">
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Register" onclick="matchPassword()"
							onchange="verifyPassword()">
					</div>

				</div>
			</form>
		</div>
	</div>
	<script>
		function verifyPassword() {
			var pw1 = document.getElementById("password").value;
			var pw2 = document.getElementById("password2").value;
			//check empty password field  
			if (pw == "") {
				alert("Password cannot be empty")
			}

			//minimum password length validation  
			if (pw1.length < 8) {
				document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";
				return false;
			}
			if (pw1 != pw2) {
				alert("Passwords do not match");
			}

			//maximum length of password validation  
			if (pw1.length > 15) {
				document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";
				return false;
			} else {
				alert("Password is correct");
			}
		}  
	</script>
	<script>
		function matchPassword() {
			var fname = document.getElementById("first_name");
			var lname = document.getElementById("last_name");
			var mobile = document.getElementById("mobileNo");
			var email = document.getElementById("email");
			var pw1 = document.getElementById("password");
			var pw2 = document.getElementById("password2");
			if (fname == "" && lname == "" && email == "" && email == "") {
				alert("Fields Cannot be empty!")
			}
			// else if (pw1 != pw2) {
			// 	alert("Passwords did not match");
			// } 
			else {
				alert("Form Submitted successfully");
			}
		}
	</script>
</body>

</html>