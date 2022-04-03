<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.project.entity.VendorInfoTbl"%>
<%@ page import="java.io.OutputStream"%>
<%@ page import="java.sql.Blob"%>
  
<!DOCTYPE html>
<html>
<head>
    <style>
             div
            {
                height: 50px;
                max-width: 50px;
            }
    </style>


</head>
<body>
 <div>
       <form action="getImage" method="post"> 
        Enter Image id:<input type="number" name="name">
        <button type="submit">Submit</button>
       </form>
  
       <%
       VendorInfoTbl i = (VendorInfoTbl) request.getAttribute("image");
       if (i != null) {
       %>
       
       </div>
       <div >
       <%
       Blob image = null;
   
       byte[] imgData = null;
   
               image = i.getVendorImage();
   
               imgData = image.getBytes(1, (int) image.length());
   
   
           // display the image
   
           response.setContentType("image/gif");
   
           OutputStream o = response.getOutputStream();
   
           o.write(imgData);
   
           o.flush();
   
           o.close();
   
       
       %>
       <%
       }
       %>





</div>

<div style="text-align: center;">
    <% 
        String msg = (String)request.getAttribute("errormsg");
        if(msg != null){

        %>

            <font color="red" > <%=msg %></font>

        <%
        }
    %>
</div>

</body>
</html>