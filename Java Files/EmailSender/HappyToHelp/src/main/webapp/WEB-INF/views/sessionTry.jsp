<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.project.entity.VendorInfoTbl"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
       <div>
             <h4>User Email: ${vendor.getVendorUserName()}</h4>
       </div>

       <div>
            <a href="/logout"> Logout </a><br>
       </div>
   <br>

     <%
           VendorInfoTbl vendor = (VendorInfoTbl)request.getAttribute("vendor");
     %>
           
     <%=vendor.getVendorFirstName() + " " +  vendor.getVendorLastName() %>
  
           <a href="showAllServices">Show Services</a>
           <a href="editprofile?vendorId=<%=vendor.getVendorId()%>">Edit Profile</a>
           
</body>
</html>
