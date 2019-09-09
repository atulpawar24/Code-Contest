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
      String s1=request.getParameter("uname");
      String s2=request.getParameter("pass");
      System.out.println(s1);
      System.out.println(s2);
      if(s1.equals("admin") && s2.equals("admin")){
    	  out.println("Authentication Succesfull");
      }else{
    	  out.println("Username/Password Wrong");
      }
    %>

</body>
</html>