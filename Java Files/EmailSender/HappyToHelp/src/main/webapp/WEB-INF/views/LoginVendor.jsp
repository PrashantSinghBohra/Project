<!DOCTYPE html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <title>Login / Sign Up Form</title>
  <link rel="shortcut icon" href="/assets/favicon.ico">
  <link rel="stylesheet" href="css/LoginVendor.css">
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
    media="screen">
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>

<body>

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
                  <li> <a href="signupCustomer.html">Sign Up</a> </li>
                  <li class="active"> <a href="LoginVendor.html">Login</a> </li>
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
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>

  <!-- <h1 class="after2">
                 HappyToHelp

    </h1>
    <h2 class="after3">
      For Vendor
    </h2> -->



  <div class="container1">

   


    <form Action="sucessLogin" class="form" id="login" method="post">
      <h1 class="form__title">Login</h1>
      <div class="form__message form__message--error"></div>
      <div class="form__input-group">
        <input type="text" class="form__input" autofocus placeholder="Username or email" name="vendorusername" id="vendorusername">
        <div class="form__input-error-message"></div>
      </div>

      <div class="form__input-group">
        <input type="password" class="form__input" autofocus placeholder="Password" name="vendorpassword" id="vendorpassword"
          title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
          required>

        <div class="form__input-error-message"></div>
      </div>
      <button class="form__button" type="submit">Login</button>
      
      <p class="form__text">
        <a href="reset" class="form__link">Forgot your password?</a>
      </p>
      
      <p class="form__text">
        <a class="form__link" href="./" id="linkCreateAccount">Don't have an account? Create account</a>
      </p>
    </form>
    <div id="message">
      <h3>Password must contain the following:</h3>
      <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
      <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
      <p id="number" class="invalid">A <b>number</b></p>
      <p id="length" class="invalid">Minimum <b>8 characters</b></p>
    </div>

  </div>
  <script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

    // When the user clicks on the password field, show the message box
    myInput.onfocus = function () {
      document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function () {
      document.getElementById("message").style.display = "none";
    }

    // When the user starts to type something inside the password field
    myInput.onkeyup = function () {
      // Validate lowercase letters
      var lowerCaseLetters = /[a-z]/g;
      if (myInput.value.match(lowerCaseLetters)) {
        letter.classList.remove("invalid");
        letter.classList.add("valid");
      } else {
        letter.classList.remove("valid");
        letter.classList.add("invalid");
      }

      // Validate capital letters
      var upperCaseLetters = /[A-Z]/g;
      if (myInput.value.match(upperCaseLetters)) {
        capital.classList.remove("invalid");
        capital.classList.add("valid");
      } else {
        capital.classList.remove("valid");
        capital.classList.add("invalid");
      }

      // Validate numbers
      var numbers = /[0-9]/g;
      if (myInput.value.match(numbers)) {
        number.classList.remove("invalid");
        number.classList.add("valid");
      } else {
        number.classList.remove("valid");
        number.classList.add("invalid");
      }

      // Validate length
      if (myInput.value.length >= 8) {
        length.classList.remove("invalid");
        length.classList.add("valid");
      } else {
        length.classList.remove("valid");
        length.classList.add("invalid");
      }
    }
  </script>
</body>