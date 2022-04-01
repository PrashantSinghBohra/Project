<%@page import="com.project.entity.VendorInfoTbl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    VendorInfoTbl vendor = (VendorInfoTbl)request.getAttribute("vendor");
%>
<form action="editprofiledetails" method="post">
  
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="first_name"  value=<%=vendor.getVendorFirstName() %>><br>
  
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value= <%=vendor.getVendorLastName() %> ><br>
  
  <label for="mobile">Mobile No:</label><br>
  <input type="text" id="mobile" name="mobileNo" value=<%=vendor.getVendorMobileNo() %> ><br>
  
  <label for="email">Email :</label><br>
  <input type="text" id="email" name="email" value=<%=vendor.getVendorEmailId() %> ><br>
 
  <label for="city">Username :</label><br>
  <input type="text" id="username" name="username" value=<%=vendor.getVendorUserName() %> ><br>
  
  <label for="password">Password :</label><br>
  <input type="text" id="password" name="password" value=<%=vendor.getVendorPassword() %> ><br>
  
   <label for="address">Address :</label><br>
  <input type="text" id="address" name="address" value=<%=vendor.getVendorAddress() %> ><br>
  
  <label for="city">State :</label><br>
  <input type="text" id="state" name="state" value=<%=vendor.getVendorState() %> ><br>
  
  <label for="city">City :</label><br>
  <input type="text" id="city" name="city" value=<%=vendor.getVendorCity() %> ><br>
  
   <label for="pincode">PinCode :</label><br>
  <input type="text" id="pincode" name="pincode" value=<%=vendor.getVendorPincode() %> ><br><br>

  <input type="hidden" id="vendorId"  name="vendorId" value=<%=vendor.getVendorId() %> >  
  <input type="submit" value="Submit">
</form>




</body>
</html>