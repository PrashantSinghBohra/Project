<%@page import="com.project.entity.VendorInfoTbl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!doctype html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title>Profile</title>
                                <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
                                <link href='' rel='stylesheet'>
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
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <style>body {
    background: #4835d4
}

.form-control:focus {
    box-shadow: none;
    border-color: #4835d4
}

.profile-button {
    background:#4835d4;
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #4835d4
}

.profile-button:focus {
    background: #4835d4;
    box-shadow: none
}

.profile-button:active {
    background:#4835d4;
    box-shadow: none
}

.back:hover {
    color: #4835d4;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}</style>
</head>

<body oncontextmenu='return false' class='snippet-body'>
                                                                   
<%
VendorInfoTbl vendor = (VendorInfoTbl)request.getAttribute("vendor");
%>

<form action="editprofiledetails" method="post">
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
                                                      <li > <a href="LoginVendor.html">Login</a> </li>
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
                                <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Nikhil</span><span class="text-black-50">xyz@mail.com</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">First Name</label>
                      <input type="text" class="form-control" id="fname" name="first_name"  value=<%=vendor.getVendorFirstName() %>></div>
                    
                      <div class="col-md-6"><label class="labels">Last Name</label>
                        <input type="text" class="form-control" id="lname" name="lname" value= <%=vendor.getVendorLastName() %>></div>
                </div>
                
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label>
                    <input type="text" class="form-control"  id="mobile" name="mobileNo" value=<%=vendor.getVendorMobileNo() %>></div>
                    
                     <div class="col-md-12"><label class="labels">Email ID</label>
                    <input type="text" class="form-control" id="email" name="email" value=<%=vendor.getVendorEmailId() %>></div>
                    
                    <div class="col-md-12"><label class="labels">User Name</label>
                      <input type="text" class="form-control"  value=" ${vendor.getVendorUserName()}"></div>
                   
                    <div class="col-md-12"><label class="labels">Address</label>
                      <input type="text" class="form-control"  id="address" name="address" value=<%=vendor.getVendorAddress() %>></div>
                   
                    <div class="col-md-12"><label class="labels">State</label>
                    <input type="text" class="form-control" id="state" name="state" value=<%=vendor.getVendorState() %>></div>
                
            </div>
            <div class="row mt-2">
                <div class="col-md-6"><label class="labels">City</label>
                  <input type="text" class="form-control"  id="city" name="city" value=<%=vendor.getVendorCity() %>></div>
                
                  <div class="col-md-6"><label class="labels">Pincode</label>
                    <input type="text" class="form-control" id="pincode" name="pincode" value=<%=vendor.getVendorPincode() %>></div>
                <div class="row mt-2">
                    <div class="form-row form-row-2">
                        <input type="file" name="Vendor_Pincode" id="Vendor_Pincode" class="input-text"
                            placeholder="Pincode" required>

                            <input type="hidden" id="vendorId"  name="vendorId" value=<%=vendor.getVendorId() %> > 
                    </div>
                   <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                  </div>

                
            
        </div>
       
    </div>
</div>
</div>
</div>

<h4>User Email: ${vendor.getVendorUserName()}</h4>


                                <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/Javascript'></script>
                                </form>
                                </body>
                            </html>